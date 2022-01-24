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
struct hfpll_data {int /*<<< orphan*/  mode_reg; scalar_t__ status_reg; int /*<<< orphan*/  lock_bit; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_BYPASSNL ; 
 int /*<<< orphan*/  PLL_OUTCTRL ; 
 int /*<<< orphan*/  PLL_RESET_N ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_hfpll* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct clk_hfpll *h = FUNC4(hw);
	struct hfpll_data const *hd = h->d;
	struct regmap *regmap = h->clkr.regmap;
	u32 val;

	FUNC1(hw);

	/* Disable PLL bypass mode. */
	FUNC3(regmap, hd->mode_reg, PLL_BYPASSNL, PLL_BYPASSNL);

	/*
	 * H/W requires a 5us delay between disabling the bypass and
	 * de-asserting the reset. Delay 10us just to be safe.
	 */
	FUNC5(10);

	/* De-assert active-low PLL reset. */
	FUNC3(regmap, hd->mode_reg, PLL_RESET_N, PLL_RESET_N);

	/* Wait for PLL to lock. */
	if (hd->status_reg) {
		do {
			FUNC2(regmap, hd->status_reg, &val);
		} while (!(val & FUNC0(hd->lock_bit)));
	} else {
		FUNC5(60);
	}

	/* Enable PLL output. */
	FUNC3(regmap, hd->mode_reg, PLL_OUTCTRL, PLL_OUTCTRL);
}