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
struct dpll_data {int mult_mask; int div1_mask; int last_rounded_m; int last_rounded_n; int /*<<< orphan*/  mult_div1_reg; } ;
struct clk_hw_omap {int context; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clk_writel ) (int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int DPLL_LOCKED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw_omap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw_omap*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC5 (struct clk_hw*) ; 

void FUNC6(struct clk_hw *hw)
{
	struct clk_hw_omap *clk = FUNC5(hw);
	const struct dpll_data *dd;
	u32 v;

	dd = clk->dpll_data;

	if (clk->context == DPLL_LOCKED) {
		FUNC1(clk, 0x4);
		FUNC2(clk, 0);

		v = ti_clk_ll_ops->clk_readl(&dd->mult_div1_reg);
		v &= ~(dd->mult_mask | dd->div1_mask);
		v |= dd->last_rounded_m << FUNC0(dd->mult_mask);
		v |= (dd->last_rounded_n - 1) << FUNC0(dd->div1_mask);
		ti_clk_ll_ops->clk_writel(v, &dd->mult_div1_reg);

		FUNC1(clk, DPLL_LOCKED);
		FUNC2(clk, 1);
	} else {
		FUNC1(clk, clk->context);
	}
}