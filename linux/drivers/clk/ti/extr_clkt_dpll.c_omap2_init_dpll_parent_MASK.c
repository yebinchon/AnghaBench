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
typedef  int u8 ;
typedef  int u32 ;
struct dpll_data {int enable_mask; int /*<<< orphan*/  control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC3 (struct clk_hw*) ; 

u8 FUNC4(struct clk_hw *hw)
{
	struct clk_hw_omap *clk = FUNC3(hw);
	u32 v;
	struct dpll_data *dd;

	dd = clk->dpll_data;
	if (!dd)
		return -EINVAL;

	v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
	v &= dd->enable_mask;
	v >>= FUNC0(dd->enable_mask);

	/* Reparent the struct clk in case the dpll is in bypass */
	if (FUNC1(v))
		return 1;

	return 0;
}