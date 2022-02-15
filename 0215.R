library (datasets)
data(iris)
View(iris)
unique(iris$Species)
install.packages("GGally", repos = "https://cran.r-project.org", type= "source") 

library(datasets)
# Load Data
data(mtcars)
# View first 5 rows
head(mtcars, 5)
?mtcars

#load ggplot package
library(ggplot2)
# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

# change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

#Finally, let us create the histogram of weight wt.
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)


#혼자 연습

library(datasets)
data(iris)
View(iris)
?iris

#각 species별 크기를 알고 싶다 
iris$Species <- as.factor(iris$species)
ggplot(aes(x=Species, y=Petal.Length), data=iris) + geom_boxplot() +ggtitle("petal length boxplot by species") + labs(x="3 Species")

#petal & sepal correlation
ggplot(aes(x=Petal.Width, y=Sepal.Length), data=iris)+geom_point()
ggplot(aes(x=Petal.Width, y=Sepal.Width), data=iris)+geom_point()
ggplot(aes(x=Petal.Length, y=Sepal.Length), data=iris)+geom_point()
ggplot(aes(x=Petal.Length, y=Sepal.Width), data=iris)+geom_point()



