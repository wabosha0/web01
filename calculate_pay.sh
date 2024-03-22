// Question 1
#!/bin/bash
read -p "Enter employee name: "name
read -p "Enter hours worked: "hours_worked
read -p "Enter rate per hour: "rate_per_hour

//Question (ii)
basic_pay=$(echo "$hours * $rate" | bc)

//Question (iii)
if (($(echo "$basic_pay>70000"| bc -1))); then
tax= $(echo "0.25* $basic_pay"| bc)
elif(($(echo "$basic_pay>15000"| -1))); then
tax=$(echo "0.15 * $basic_pay"| bc)
else
tax=0
fi

//question (iv)
net_pay=$(echo "$basic_pay -$tax"| bc)