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
struct regmap {int dummy; } ;
struct hfpll_data {int config_val; int user_val; int user_vco_mask; unsigned long low_vco_max_rate; int droop_val; scalar_t__ droop_reg; scalar_t__ user_reg; scalar_t__ n_reg; scalar_t__ m_reg; scalar_t__ config_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {int init_done; TYPE_1__ clkr; struct hfpll_data* d; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct clk_hw*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,scalar_t__,int) ; 
 struct clk_hfpll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct clk_hfpll *h = FUNC3(hw);
	struct hfpll_data const *hd = h->d;
	struct regmap *regmap = h->clkr.regmap;

	if (FUNC1(h->init_done))
		return;

	/* Configure PLL parameters for integer mode. */
	if (hd->config_val)
		FUNC2(regmap, hd->config_reg, hd->config_val);
	FUNC2(regmap, hd->m_reg, 0);
	FUNC2(regmap, hd->n_reg, 1);

	if (hd->user_reg) {
		u32 regval = hd->user_val;
		unsigned long rate;

		rate = FUNC0(hw);

		/* Pick the right VCO. */
		if (hd->user_vco_mask && rate > hd->low_vco_max_rate)
			regval |= hd->user_vco_mask;
		FUNC2(regmap, hd->user_reg, regval);
	}

	if (hd->droop_reg)
		FUNC2(regmap, hd->droop_reg, hd->droop_val);

	h->init_done = true;
}