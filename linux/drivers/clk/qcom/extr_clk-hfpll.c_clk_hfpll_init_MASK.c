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
struct hfpll_data {int /*<<< orphan*/  lock_bit; scalar_t__ status_reg; scalar_t__ mode_reg; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PLL_BYPASSNL ; 
 int PLL_OUTCTRL ; 
 int PLL_RESET_N ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,scalar_t__,int*) ; 
 struct clk_hfpll* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC7(struct clk_hw *hw)
{
	struct clk_hfpll *h = FUNC6(hw);
	struct hfpll_data const *hd = h->d;
	struct regmap *regmap = h->clkr.regmap;
	u32 mode, status;

	FUNC5(regmap, hd->mode_reg, &mode);
	if (mode != (PLL_BYPASSNL | PLL_RESET_N | PLL_OUTCTRL)) {
		FUNC3(hw);
		return;
	}

	if (hd->status_reg) {
		FUNC5(regmap, hd->status_reg, &status);
		if (!(status & FUNC0(hd->lock_bit))) {
			FUNC1(1, "HFPLL %s is ON, but not locked!\n",
			     FUNC2(hw->clk));
			FUNC4(hw);
			FUNC3(hw);
		}
	}
}