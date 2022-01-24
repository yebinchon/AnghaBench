#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_DIVIDER_POWER_OF_TWO ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct clk_div_table const*,int) ; 

__attribute__((used)) static int FUNC3(const struct clk_div_table *table,
			 unsigned long parent_rate, unsigned long rate,
			 unsigned long flags)
{
	int div = FUNC0((u64)parent_rate, rate);

	if (flags & CLK_DIVIDER_POWER_OF_TWO)
		div = FUNC1(div);
	if (table)
		div = FUNC2(table, div);

	return div;
}