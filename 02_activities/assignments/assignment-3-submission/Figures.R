# Clear environment
rm(list=ls())

library(ggplot2)
library(ggpubr)

setwd("C:/Users/tdudg/Documents/DSI/visualization/02_activities/assignments/assignment-3-submission")

hogs <- read.csv("./hogs.csv", header=T)
hogs

ggplot(hogs, aes(x=Feed.Costs...., y=Dressed.Weight..kg.)) +
  geom_point(size = 4) +
  xlab("Feed costs ($)") +
  ylab("Dressed weight (kg)") +
  geom_smooth(method="lm") +
  stat_regline_equation(label.x=100, label.y=110) +
  theme_classic()

ggplot(hogs, aes(x=Feed.Costs...., y=Other.Variable.Costs....)) +
  geom_point(size = 4) +
  xlab("Feed costs ($)") +
  ylab("Other variable costs") +
  geom_smooth(method="lm") +
  stat_regline_equation(label.x=100, label.y=55) +
  theme_classic()
