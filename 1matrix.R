# syntax matrix(data,nrow,mcol,byrow,dimnames)
matt<-matrix(c(1,2,3,4,5,6,7,8,9,90,11,15,68,92,14,25),nrow=4,ncol=4,byrow=FALSE)
matt

mat<-matrix(c(1,2,3,4,5,6,7,8,9,90,11,15,68,92,15),nrow=4,ncol=4,byrow=FALSE)
mat# if the elements are less then it automatically repeats the nos.

row_name<-c("R1","R2","R3","R4")
col_name<-c("C1","C2","C3","C4")
ma<-matrix(c(1,2,3,4,5,6,7,8,9,90,11,15,68,92,15),nrow=4,ncol=4,byrow=FALSE,dimnames=list(row_name,col_name))
ma
ma[2,4]#for particular element from matrix
ma[,2]# for printing entire column
ma[1,]# for printing entire row

m<-matrix(c(1:13),nrow=4,byrow=TRUE)
t(m)# for transpose i.e rows become column and vice-versa 
m

sum=mat+matt#adding to matrices 
sum

emp.data<- data.frame( 
 emp_id=c(1:5),
 emp_name=c("ram","sham","rom","com","tom"),
 sal=c(140,1234,124,125,112),
 start_yr=c("2019","2020","2021","2022","2023"),
 stringsAsFactors =FALSE#to make the data  it proper
)

print(emp.data)
str(emp.data)#tells the type of data in the function 
f1<-data.frame(emp.data$emp_name,emp.data$sal)#for extracting particular objects from the data frame
f1
f2<-emp.data[2,]
f2
f3<-emp.data[2:4]
f3
f4<-emp.data[1:2,1:4]#particular extraction of 2 rows and 4 columns
f4
f5<-emp.data[c(2,4),c(2,3)]#for extracting name and salary of 2nd & 4th person
f5
f6<-emp.data[c(1,5),c(1,2,4)]
f6
emp.data<-emp.data[-2,]
emp.data
x<-list(6,"chop",409,"2023")
emp.data<-rbind(emp.data,x)#rbinds adds a row
y<-c("nagpur","sholapur","pandurna","washim","bhadravati")
emp.data<-cbind(emp.data,address=y)#cbinds adds a column
emp.data
str(emp.data)
emp<-emp.data[-2,]
emp.data
emp.data$start_yr<-NULL# removes the column
emp.data
