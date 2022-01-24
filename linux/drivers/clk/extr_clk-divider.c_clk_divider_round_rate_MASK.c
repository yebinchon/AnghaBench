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
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider {int flags; int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int CLK_DIVIDER_READ_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clk_divider*) ; 
 long FUNC2 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 long FUNC3 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct clk_divider* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC5(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct clk_divider *divider = FUNC4(hw);

	/* if read only, just return current value */
	if (divider->flags & CLK_DIVIDER_READ_ONLY) {
		u32 val;

		val = FUNC1(divider) >> divider->shift;
		val &= FUNC0(divider->width);

		return FUNC2(hw, rate, prate, divider->table,
					     divider->width, divider->flags,
					     val);
	}

	return FUNC3(hw, rate, prate, divider->table,
				  divider->width, divider->flags);
}