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
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_DIVIDER_ROUND_CLOSEST ; 
 int FUNC0 (struct clk_div_table const*,unsigned long,unsigned long,unsigned long) ; 
 int FUNC1 (struct clk_div_table const*,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC2(const struct clk_div_table *table,
		      unsigned long parent_rate, unsigned long rate,
		      unsigned long flags)
{
	if (flags & CLK_DIVIDER_ROUND_CLOSEST)
		return FUNC0(table, parent_rate, rate, flags);

	return FUNC1(table, parent_rate, rate, flags);
}