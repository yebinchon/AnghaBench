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
typedef  int u32 ;
struct dpll_data {int /*<<< orphan*/  control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int OMAP4430_DPLL_REGM4XEN_MASK ; 
 unsigned long OMAP4430_REGM4XEN_MULT ; 
 unsigned long FUNC0 (struct clk_hw_omap*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC2 (struct clk_hw*) ; 

unsigned long FUNC3(struct clk_hw *hw,
					 unsigned long parent_rate)
{
	struct clk_hw_omap *clk = FUNC2(hw);
	u32 v;
	unsigned long rate;
	struct dpll_data *dd;

	if (!clk || !clk->dpll_data)
		return 0;

	dd = clk->dpll_data;

	rate = FUNC0(clk);

	/* regm4xen adds a multiplier of 4 to DPLL calculations */
	v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
	if (v & OMAP4430_DPLL_REGM4XEN_MASK)
		rate *= OMAP4430_REGM4XEN_MULT;

	return rate;
}