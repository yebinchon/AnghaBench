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
struct dpll_data {int enable_mask; int last_rounded_m; int mult_mask; int last_rounded_n; int div1_mask; int /*<<< orphan*/  mult_div1_reg; int /*<<< orphan*/  control_reg; } ;
struct clk_hw_omap {int context; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int DPLL_LOCKED ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC3 (struct clk_hw*) ; 

int FUNC4(struct clk_hw *hw)
{
	struct clk_hw_omap *clk = FUNC3(hw);
	struct dpll_data *dd;
	u32 v;

	dd = clk->dpll_data;

	v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
	clk->context = (v & dd->enable_mask) >> FUNC0(dd->enable_mask);

	if (clk->context == DPLL_LOCKED) {
		v = ti_clk_ll_ops->clk_readl(&dd->mult_div1_reg);
		dd->last_rounded_m = (v & dd->mult_mask) >>
						FUNC0(dd->mult_mask);
		dd->last_rounded_n = ((v & dd->div1_mask) >>
						FUNC0(dd->div1_mask)) + 1;
	}

	return 0;
}