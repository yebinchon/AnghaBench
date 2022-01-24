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
struct clk_hw {int dummy; } ;
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_DIVIDER_ALLOW_ZERO ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct clk_div_table const*,unsigned int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 

unsigned long FUNC4(struct clk_hw *hw, unsigned long parent_rate,
				  unsigned int val,
				  const struct clk_div_table *table,
				  unsigned long flags, unsigned long width)
{
	unsigned int div;

	div = FUNC2(table, val, flags, width);
	if (!div) {
		FUNC1(!(flags & CLK_DIVIDER_ALLOW_ZERO),
			"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
			FUNC3(hw));
		return parent_rate;
	}

	return FUNC0((u64)parent_rate, div);
}