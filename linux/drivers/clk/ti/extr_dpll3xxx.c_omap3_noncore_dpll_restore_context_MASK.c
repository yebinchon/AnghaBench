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
 int /*<<< orphan*/  FUNC1 (struct clk_hw_omap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw_omap*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC5 (struct clk_hw*) ; 

void FUNC6(struct clk_hw *hw)
{
	struct clk_hw_omap *clk = FUNC5(hw);
	const struct dpll_data *dd;
	u32 ctrl, mult_div1;

	dd = clk->dpll_data;

	ctrl = ti_clk_ll_ops->clk_readl(&dd->control_reg);
	mult_div1 = ti_clk_ll_ops->clk_readl(&dd->mult_div1_reg);

	if (clk->context == ((ctrl & dd->enable_mask) >>
			     FUNC0(dd->enable_mask)) &&
	    dd->last_rounded_m == ((mult_div1 & dd->mult_mask) >>
				   FUNC0(dd->mult_mask)) &&
	    dd->last_rounded_n == ((mult_div1 & dd->div1_mask) >>
				   FUNC0(dd->div1_mask)) + 1) {
		/* nothing to be done */
		return;
	}

	if (clk->context == DPLL_LOCKED)
		FUNC2(clk, 0);
	else
		FUNC1(clk, clk->context);
}