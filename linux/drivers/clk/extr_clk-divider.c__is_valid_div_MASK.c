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
 unsigned long CLK_DIVIDER_POWER_OF_TWO ; 
 int FUNC0 (struct clk_div_table const*,unsigned int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static bool FUNC2(const struct clk_div_table *table, unsigned int div,
			  unsigned long flags)
{
	if (flags & CLK_DIVIDER_POWER_OF_TWO)
		return FUNC1(div);
	if (table)
		return FUNC0(table, div);
	return true;
}