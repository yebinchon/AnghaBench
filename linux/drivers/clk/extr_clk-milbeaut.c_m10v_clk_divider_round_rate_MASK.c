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
struct m10v_clk_divider {int flags; int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  table; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_DIVIDER_READ_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 long FUNC2 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct m10v_clk_divider* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC5(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct m10v_clk_divider *divider = FUNC4(hw);

	/* if read only, just return current value */
	if (divider->flags & CLK_DIVIDER_READ_ONLY) {
		u32 val;

		val = FUNC3(divider->reg) >> divider->shift;
		val &= FUNC0(divider->width);

		return FUNC1(hw, rate, prate, divider->table,
					     divider->width, divider->flags,
					     val);
	}

	return FUNC2(hw, rate, prate, divider->table,
				  divider->width, divider->flags);
}