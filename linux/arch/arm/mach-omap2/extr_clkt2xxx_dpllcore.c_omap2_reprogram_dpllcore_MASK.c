#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct prcm_config {int cm_clksel1_pll; int cm_clksel2_pll; int /*<<< orphan*/  base_sdrc_rfr; } ;
struct dpll_data {int mult_mask; int div1_mask; int /*<<< orphan*/  mult_div1_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int dpll_speed; int xtal_speed; } ;
struct TYPE_3__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int CORE_CLK_SRC_DPLL ; 
 int CORE_CLK_SRC_DPLL_X2 ; 
 int EINVAL ; 
 int OMAP24XX_CORE_CLK_SRC_MASK ; 
 int /*<<< orphan*/  SDRC_RFR_CTRL_BYPASS ; 
 int FUNC0 (int) ; 
 TYPE_2__* curr_prcm_set ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 TYPE_1__ omap_clk_ll_ops ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct clk_hw_omap* FUNC10 (struct clk_hw*) ; 

int FUNC11(struct clk_hw *hw, unsigned long rate,
			     unsigned long parent_rate)
{
	struct clk_hw_omap *clk = FUNC10(hw);
	u32 cur_rate, low, mult, div, valid_rate, done_rate;
	u32 bypass = 0;
	struct prcm_config tmpset;
	const struct dpll_data *dd;

	cur_rate = FUNC3();
	mult = FUNC4();

	if ((rate == (cur_rate / 2)) && (mult == 2)) {
		FUNC8(CORE_CLK_SRC_DPLL, 1);
	} else if ((rate == (cur_rate * 2)) && (mult == 1)) {
		FUNC8(CORE_CLK_SRC_DPLL_X2, 1);
	} else if (rate != cur_rate) {
		valid_rate = FUNC1(rate);
		if (valid_rate != rate)
			return -EINVAL;

		if (mult == 1)
			low = curr_prcm_set->dpll_speed;
		else
			low = curr_prcm_set->dpll_speed / 2;

		dd = clk->dpll_data;
		if (!dd)
			return -EINVAL;

		tmpset.cm_clksel1_pll =
			omap_clk_ll_ops.clk_readl(&dd->mult_div1_reg);
		tmpset.cm_clksel1_pll &= ~(dd->mult_mask |
					   dd->div1_mask);
		div = ((curr_prcm_set->xtal_speed / 1000000) - 1);
		tmpset.cm_clksel2_pll = FUNC5();
		tmpset.cm_clksel2_pll &= ~OMAP24XX_CORE_CLK_SRC_MASK;
		if (rate > low) {
			tmpset.cm_clksel2_pll |= CORE_CLK_SRC_DPLL_X2;
			mult = ((rate / 2) / 1000000);
			done_rate = CORE_CLK_SRC_DPLL_X2;
		} else {
			tmpset.cm_clksel2_pll |= CORE_CLK_SRC_DPLL;
			mult = (rate / 1000000);
			done_rate = CORE_CLK_SRC_DPLL;
		}
		tmpset.cm_clksel1_pll |= (div << FUNC0(dd->mult_mask));
		tmpset.cm_clksel1_pll |= (mult << FUNC0(dd->div1_mask));

		/* Worst case */
		tmpset.base_sdrc_rfr = SDRC_RFR_CTRL_BYPASS;

		if (rate == curr_prcm_set->xtal_speed)	/* If asking for 1-1 */
			bypass = 1;

		/* For omap2xxx_sdrc_init_params() */
		FUNC8(CORE_CLK_SRC_DPLL_X2, 1);

		/* Force dll lock mode */
		FUNC2(tmpset.cm_clksel1_pll, tmpset.base_sdrc_rfr,
			       bypass);

		/* Errata: ret dll entry state */
		FUNC7(FUNC6());
		FUNC8(done_rate, 0);
	}

	return 0;
}