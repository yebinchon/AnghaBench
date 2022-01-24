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
typedef  unsigned int u32 ;
struct clk_omap_divider {int flags; int shift; int /*<<< orphan*/  latch; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned int (* clk_readl ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clk_writel ) (unsigned int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int CLK_DIVIDER_HIWORD_MASK ; 
 unsigned int FUNC0 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 unsigned int FUNC1 (struct clk_omap_divider*,unsigned int) ; 
 unsigned int FUNC2 (struct clk_omap_divider*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_omap_divider* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
				   unsigned long parent_rate)
{
	struct clk_omap_divider *divider;
	unsigned int div, value;
	u32 val;

	if (!hw || !rate)
		return -EINVAL;

	divider = FUNC6(hw);

	div = FUNC0(parent_rate, rate);
	value = FUNC1(divider, div);

	if (value > FUNC2(divider))
		value = FUNC2(divider);

	if (divider->flags & CLK_DIVIDER_HIWORD_MASK) {
		val = FUNC2(divider) << (divider->shift + 16);
	} else {
		val = ti_clk_ll_ops->clk_readl(&divider->reg);
		val &= ~(FUNC2(divider) << divider->shift);
	}
	val |= value << divider->shift;
	ti_clk_ll_ops->clk_writel(val, &divider->reg);

	FUNC5(&divider->reg, divider->latch);

	return 0;
}