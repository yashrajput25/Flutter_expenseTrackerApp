// ignore_for_file: prefer_const_constructors

import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(
    this.expense, {
    super.key,
  });

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                    '₹ ${expense.amount.toStringAsFixed(2)}'), //12.3456 =>12.34
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category] as IconData),
                    SizedBox(width: 8),
                    Text(expense.formattedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ); //card is styled container with elevated style
  }
}
