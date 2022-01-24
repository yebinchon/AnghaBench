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
typedef  int /*<<< orphan*/  u8 ;
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_DIVIDER_MAX_AT_ZERO ; 
 unsigned long CLK_DIVIDER_ONE_BASED ; 
 unsigned long CLK_DIVIDER_POWER_OF_TWO ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct clk_div_table const*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(const struct clk_div_table *table,
			     unsigned int div, unsigned long flags, u8 width)
{
	if (flags & CLK_DIVIDER_ONE_BASED)
		return div;
	if (flags & CLK_DIVIDER_POWER_OF_TWO)
		return FUNC0(div);
	if (flags & CLK_DIVIDER_MAX_AT_ZERO)
		return (div == FUNC2(width) + 1) ? 0 : div;
	if (table)
		return  FUNC1(table, div);
	return div - 1;
}