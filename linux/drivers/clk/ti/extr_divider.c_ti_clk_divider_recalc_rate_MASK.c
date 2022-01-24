#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk_omap_divider {unsigned int shift; int flags; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int CLK_DIVIDER_ALLOW_ZERO ; 
 unsigned long FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct clk_omap_divider*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 unsigned int FUNC4 (struct clk_omap_divider*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_omap_divider* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC7(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct clk_omap_divider *divider = FUNC6(hw);
	unsigned int div, val;

	val = ti_clk_ll_ops->clk_readl(&divider->reg) >> divider->shift;
	val &= FUNC4(divider);

	div = FUNC2(divider, val);
	if (!div) {
		FUNC1(!(divider->flags & CLK_DIVIDER_ALLOW_ZERO),
		     "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
		     FUNC3(hw));
		return parent_rate;
	}

	return FUNC0(parent_rate, div);
}