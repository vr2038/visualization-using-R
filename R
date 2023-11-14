setwd("C:/supermarket_sales - Sheet1.csv")
getwd()

df = read.csv("supermarket_sales - Sheet1.csv")
df

plot(df)
library(ggplot2)

ggplot(df,aes(x=(Product.line) , y=((Unit.price)), fill=Product.line))+
  geom_bar(stat="identity")

ggplot(df,aes(x=(City),y=(Total),fill=City))+
  geom_bar(stat="identity")+
  facet_wrap(Gender~.)

ggplot(df,aes(x=Tax.5. , fill=Gender))+
  geom_histogram(color="red",position="dodge")+
  theme(legend.position="top")

ggplot(df,aes(x="",y=Total,fill=Payment))+
  geom_bar(stat="identity",width=1)+
  coord_polar("y",start=0)+
  ggtitle("Pie-Chart","cash : 112202....creditcard : 100767....E-wallet: 109993")+
  theme_void()


library(tidyverse)
library(conflicted)
library(dplyr)
library(datasets)

ggplot()+
  geom_line(df,mapping=aes(x=Quantity,y=cogs),color="red")+
  geom_point(df,mapping=aes(x=Quantity,y=cogs),color="red")

ggplot(df,aes(x=gross.income,y=Unit.price))+
  geom_point()+
  ggtitle("Scatter plot")+
  ggtitle("unitprice to that of gross income")
ggplot(df,aes(x=Total,y=Rating))+
  geom_point()+
  ggtitle("Scatter plot [total gross and rating belongs to purchase]")

ggplot(df,aes(x=City,y=gross.income))+
  geom_boxplot(outlier.color="red",outlier.shape=10,outlier.size=5)+
  ggtitle("Box Plot")

