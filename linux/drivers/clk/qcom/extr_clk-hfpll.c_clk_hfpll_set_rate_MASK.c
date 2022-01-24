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
typedef  unsigned long u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {unsigned long user_vco_mask; unsigned long low_vco_max_rate; scalar_t__ l_reg; scalar_t__ user_reg; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {int /*<<< orphan*/  lock; TYPE_1__ clkr; struct hfpll_data* d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hfpll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,scalar_t__,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_hfpll* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
			      unsigned long parent_rate)
{
	struct clk_hfpll *h = FUNC7(hw);
	struct hfpll_data const *hd = h->d;
	struct regmap *regmap = h->clkr.regmap;
	unsigned long flags;
	u32 l_val, val;
	bool enabled;

	l_val = rate / parent_rate;

	FUNC5(&h->lock, flags);

	enabled = FUNC2(hw->clk);
	if (enabled)
		FUNC0(h);

	/* Pick the right VCO. */
	if (hd->user_reg && hd->user_vco_mask) {
		FUNC3(regmap, hd->user_reg, &val);
		if (rate <= hd->low_vco_max_rate)
			val &= ~hd->user_vco_mask;
		else
			val |= hd->user_vco_mask;
		FUNC4(regmap, hd->user_reg, val);
	}

	FUNC4(regmap, hd->l_reg, l_val);

	if (enabled)
		FUNC1(hw);

	FUNC6(&h->lock, flags);

	return 0;
}