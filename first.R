x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y)


# Create a line chart
# Example data
x <- c(1, 2, 3, 4, 5)
y <- c(3, 6, 2, 8, 5)
plot(x, y, type = "l", main = "Line Chart", xlab = "X-axis", ylab = "Y-axis")


# bar chart
# Load the ggplot2 package
library(ggplot2)
# Example data
data <- data.frame(category = c("A", "B", "C", "D", "E"),
                   value = c(10, 15, 8, 12, 20))
ggplot(data, aes(x = category, y = value)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Bar Chart", x = "Category", y = "Value")


# Load necessary packages
library(readr)

# Prompt the user to choose a CSV file
csv_file <- file.choose()

# Read data from the chosen CSV file (assuming data is numeric)
data <- read_csv(csv_file)

# Check data types to ensure they are numeric
if (all(sapply(data, is.numeric))) {
  # Calculate Pearson correlation coefficients
  correlation_matrix <- cor(data)
  # Print the correlation matrix
  print(correlation_matrix)
} else {
  cat("Error: Data columns are not numeric.\n")
}



# Chi square
observed <- matrix(c(30, 15, 20, 25), nrow = 2, byrow = TRUE)
colnames(observed) <- c("Category A", "Category B")
rownames(observed) <- c("Group 1", "Group 2")

chi_square_result <- chisq.test(observed)

print(observed)

print(chi_square_result)

