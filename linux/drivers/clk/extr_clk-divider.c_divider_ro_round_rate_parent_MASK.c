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
typedef  int /*<<< orphan*/  u64 ;
struct clk_hw {int dummy; } ;
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 long FUNC0 (int /*<<< orphan*/ ,int) ; 
 long EINVAL ; 
 int FUNC1 (struct clk_div_table const*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (struct clk_hw*,unsigned long) ; 

long FUNC4(struct clk_hw *hw, struct clk_hw *parent,
				  unsigned long rate, unsigned long *prate,
				  const struct clk_div_table *table, u8 width,
				  unsigned long flags, unsigned int val)
{
	int div;

	div = FUNC1(table, val, flags, width);

	/* Even a read-only clock can propagate a rate change */
	if (FUNC2(hw) & CLK_SET_RATE_PARENT) {
		if (!parent)
			return -EINVAL;

		*prate = FUNC3(parent, rate * div);
	}

	return FUNC0((u64)*prate, div);
}