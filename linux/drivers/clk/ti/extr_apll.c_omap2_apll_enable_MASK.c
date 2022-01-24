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
struct dpll_data {int enable_mask; int idlest_mask; int /*<<< orphan*/  idlest_reg; int /*<<< orphan*/  control_reg; } ;
struct clk_hw_omap {int /*<<< orphan*/  hw; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clk_writel ) (int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int MAX_APLL_WAIT_TRIES ; 
 int OMAP2_EN_APLL_LOCKED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct clk_hw_omap *clk = FUNC6(hw);
	struct dpll_data *ad = clk->dpll_data;
	u32 v;
	int i = 0;

	v = ti_clk_ll_ops->clk_readl(&ad->control_reg);
	v &= ~ad->enable_mask;
	v |= OMAP2_EN_APLL_LOCKED << FUNC0(ad->enable_mask);
	ti_clk_ll_ops->clk_writel(v, &ad->control_reg);

	while (1) {
		v = ti_clk_ll_ops->clk_readl(&ad->idlest_reg);
		if (v & ad->idlest_mask)
			break;
		if (i > MAX_APLL_WAIT_TRIES)
			break;
		i++;
		FUNC7(1);
	}

	if (i == MAX_APLL_WAIT_TRIES) {
		FUNC2("%s failed to transition to locked\n",
			FUNC1(&clk->hw));
		return -EBUSY;
	}

	return 0;
}