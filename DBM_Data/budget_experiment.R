setwd('C:/Users/willk/OneDrive/Desktop/Offline Classwork/Capstone/DBM_Data')
getwd()

library(dplyr)
library(readr)

### Bringing in Agency Data ###

md_health <- read.csv('health_M00_ExpenditureAllowance.csv')
md_edu <- read.csv('education_R00_ExpenditureAllowance.csv')
md_transp <- read.csv('transportation_J00_ExpenditureAllowance.csv')
md_housing <- read.csv('housing_and_community_dev_S00_ExpenditureAllowance.csv')


md_comptroller <- read.csv('comptroller_E00_ExpenditureAllowance.csv') # included primarily because we have a FOIA to compare it to
# this actually ranks 15th 

md_governor <- read.csv('governors_office_D15_ExpenditureAllowance.csv') 

md_commerce <- read.csv('commerce_T00_ExpenditureAllowance.csv')










### Health Department ###

md_health_communications <- md_health %>% filter(Object.Name == "Communications") 
# makes a dataframe of just health department communication spending

# HD 2023

md_health_communications$FY.2023.Budget.Book.Actuals <- parse_number(md_health_communications$FY.2023.Budget.Book.Actuals)
# This removes all commas! This is why we need the readr library. Makes it so we can convert to numerical.

md_health_communications$FY.2023.Budget.Book.Actuals <- as.numeric(md_health_communications$FY.2023.Budget.Book.Actuals)

class(md_health_communications$FY.2023.Budget.Book.Actuals)

md_health_communications_2023 <- sum(na.omit(md_health_communications$FY.2023.Budget.Book.Actuals))

#HD 2024

md_health_communications$FY.2024.Budget.Book.Working <- parse_number(md_health_communications$FY.2024.Budget.Book.Working)

md_health_communications$FY.2024.Budget.Book.Working <- as.numeric(md_health_communications$FY.2024.Budget.Book.Working)

class(md_health_communications$FY.2024.Budget.Book.Working)

md_health_communications_2024 <- sum(na.omit(md_health_communications$FY.2024.Budget.Book.Working)) 

# HD 2025

md_health_communications$FY.2025.Governors.Allowance <- parse_number(md_health_communications$FY.2025.Governors.Allowance)

md_health_communications$FY.2025.Governors.Allowance <- as.numeric(md_health_communications$FY.2025.Governors.Allowance)

md_health_communications_2025 <- sum(na.omit(md_health_communications$FY.2025.Governors.Allowance))


### Education Department ###

md_edu_communications <- md_edu %>% filter(Object.Name == "Communications") 

# EDU 2023

md_edu_communications$FY.2023.Budget.Book.Actuals <- parse_number(md_edu_communications$FY.2023.Budget.Book.Actuals)

md_edu_communications$FY.2023.Budget.Book.Actuals <- as.numeric(md_edu_communications$FY.2023.Budget.Book.Actuals)

md_edu_communications_2023 <- sum(na.omit(md_edu_communications$FY.2023.Budget.Book.Actuals))

# EDU 2024 

md_edu_communications$FY.2024.Budget.Book.Working <- parse_number(md_edu_communications$FY.2024.Budget.Book.Working)

md_edu_communications$FY.2024.Budget.Book.Working <- as.numeric(md_edu_communications$FY.2024.Budget.Book.Working)

md_edu_communications_2024 <- sum(na.omit(md_edu_communications$FY.2024.Budget.Book.Working))

# EDU 2025

md_edu_communications$FY.2025.Governors.Allowance <- parse_number(md_edu_communications$FY.2025.Governors.Allowance)

md_edu_communications$FY.2025.Governors.Allowance <- as.numeric(md_edu_communications$FY.2025.Governors.Allowance)

md_edu_communications_2025 <- sum(na.omit(md_edu_communications$FY.2025.Governors.Allowance))


### Transportation Department ###

md_transp_communications <- md_transp %>% filter(Object.Name == "Communications") 

# TRANSP 2023

md_transp_communications$FY.2023.Budget.Book.Actuals <- as.numeric(parse_number(md_transp_communications$FY.2023.Budget.Book.Actuals))
#Update-doing this as one line of code now. Looks good!

md_transp_communications_2023 <- sum(na.omit(md_transp_communications$FY.2023.Budget.Book.Actuals))

# TRANSP 2024 

md_transp_communications$FY.2024.Budget.Book.Working <- as.numeric(parse_number(md_transp_communications$FY.2024.Budget.Book.Working ))

md_transp_communications_2024 <- sum(na.omit(md_transp_communications$FY.2024.Budget.Book.Working))

# TRANSP 2025

md_transp_communications$FY.2025.Governors.Allowance <- as.numeric(parse_number(md_transp_communications$FY.2025.Governors.Allowance))

md_transp_communications_2025 <- sum(na.omit(md_transp_communications$FY.2025.Governors.Allowance))


### Housing Department ###

md_housing_communications <- md_housing %>% filter(Object.Name == "Communications")

# HOUSING 2023 

md_housing_communications$FY.2023.Budget.Book.Actuals <- as.numeric(parse_number(md_housing_communications$FY.2023.Budget.Book.Actuals))

md_housing_communications_2023 <- sum(na.omit(md_housing_communications$FY.2023.Budget.Book.Actuals))

# HOUSING 2024

md_housing_communications$FY.2024.Budget.Book.Working <- as.numeric(parse_number(md_housing_communications$FY.2024.Budget.Book.Working))

md_housing_communications_2024 <- sum(na.omit(md_housing_communications$FY.2024.Budget.Book.Working))

# HOUSING 2025

md_housing_communications$FY.2025.Governors.Allowance  <- as.numeric(parse_number(md_housing_communications$FY.2025.Governors.Allowance))

md_housing_communications_2025 <- sum(na.omit(md_housing_communications$FY.2025.Governors.Allowance))



### COMPTROLLER DEPARTMENT ###

md_comptroller_communications <- md_comptroller %>% filter(Object.Name == "Communications")

# COMPT 2023

md_comptroller_communications$FY.2023.Budget.Book.Actuals <- as.numeric(parse_number(md_comptroller_communications$FY.2023.Budget.Book.Actuals))

md_comptroller_communications_2023 <- sum(na.omit(md_comptroller_communications$FY.2023.Budget.Book.Actuals))

# COMPT 2024

md_comptroller_communications$FY.2024.Budget.Book.Working <- as.numeric(parse_number(md_comptroller_communications$FY.2024.Budget.Book.Working))

md_comptroller_communications_2024 <- sum(na.omit(md_comptroller_communications$FY.2024.Budget.Book.Working))

# COMPT 2025

md_comptroller_communications$FY.2025.Governors.Allowance <- as.numeric(parse_number(md_comptroller_communications$FY.2025.Governors.Allowance))

md_comptroller_communications_2025 <- sum(na.omit(md_comptroller_communications$FY.2025.Governors.Allowance))


### GOVERNOR'S OFFICE ### 

md_gov_communications <- md_governor %>% filter(Object.Name == "Communications") 

# Governor's office 2023 

md_gov_communications$FY.2023.Budget.Book.Actuals <- parse_number(md_gov_communications$FY.2023.Budget.Book.Actuals)

md_gov_communications$FY.2023.Budget.Book.Actuals <- as.numeric(md_gov_communications$FY.2023.Budget.Book.Actuals)

md_gov_communications_2023 <- sum(na.omit(md_gov_communications$FY.2023.Budget.Book.Actuals))


# Governor's office 2024 

md_gov_communications$FY.2024.Budget.Book.Working <- parse_number(md_gov_communications$FY.2024.Budget.Book.Working )

md_gov_communications$FY.2024.Budget.Book.Working <- as.numeric(md_gov_communications$FY.2024.Budget.Book.Working )

md_gov_communications_2024 <- sum(na.omit(md_gov_communications$FY.2024.Budget.Book.Working ))


### COMMERCE DEPARTMENT ###

md_commerce_communications <- md_commerce %>% filter(Object.Name== "Communications")

#COMMERCE 2023

md_commerce_communications$FY.2023.Budget.Book.Actuals <- as.numeric(parse_number(md_commerce_communications$FY.2023.Budget.Book.Actuals))
md_commerce_communications_2023 <- sum(na.omit(md_commerce_communications$FY.2023.Budget.Book.Actuals))

# COMMERCE 2024

md_commerce_communications$FY.2024.Budget.Book.Working <- as.numeric(parse_number(md_commerce_communications$FY.2024.Budget.Book.Working))
md_commerce_communications_2024 <- sum(na.omit(md_commerce_communications$FY.2024.Budget.Book.Working))

# COMMERCE 2025

md_commerce_communications$FY.2025.Governors.Allowance <- as.numeric(parse_number(md_commerce_communications$FY.2025.Governors.Allowance))
md_commerce_communications_2025 <- sum(na.omit(md_commerce_communications$FY.2025.Governors.Allowance))






### GGPLOT WORKZONE ### 

library(ggplot2)

install.packages('ggthemes', dependencies = TRUE)

library("ggthemes")

help("ggthemes")

# Pseudocode... This is harder than I thought. We basically just have a variable that's a number, and we 
# need to get it into a GGPLOT where the number's reflected on the Y-axis. And the X-axis needs to be
# the name of the agency the variable represents. Do I start this by, what, just making a new dataframe..?
# Let's maybe go for 10 agencies on this? 
# OH! And we should keep an eye on the fact that we want to do with for 2024 specifically 

comms_agencies <- c("Health", "Education", "Transportation", "Housing", "Comptroller", "Governor", "Commerce")

comms_totals <- c(md_health_communications_2024, md_edu_communications_2024, md_transp_communications_2024, md_housing_communications_2024, md_comptroller_communications_2024, md_gov_communications_2024, md_commerce_communications_2024 )

DF_all_comms_totals <- data.frame(Departments=comms_agencies, Comms_Spending=comms_totals)

options(scipen=10000) # gets rid of scientific notation. 

comms_plot <- ggplot(DF_all_comms_totals, aes(x=Departments, y=Comms_Spending)) + 
  geom_bar(stat="identity", fill="#f8b740") + 
  theme_tufte() +
  labs(x= "Departments" , y = "Communications Spending") +
  ggtitle("Communications Budgets for Key MD Agencies") 

#Not sure why this isn't working, but...  We did find their version of Red, so it would be cool to get backgroudn to turn that color
#comms_plot <- ggplot(DF_all_comms_totals, aes(x=Departments, y=Comms_Spending)) + geom_bar(stat="identity", fill="#f8b740") + theme_tufte(panel.background = element_rect(fill="#cf2e2e", color="cf2e2e"))

