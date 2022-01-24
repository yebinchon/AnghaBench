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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;

/* Variables and functions */
 int PLL_BYPASSNL ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int PLL_OUTCTRL ; 
 int PLL_RESET_N ; 
 int PLL_VOTE_FSM_ENA ; 
 int FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_alpha_pll* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct clk_alpha_pll*) ; 
 int FUNC8 (struct clk_alpha_pll*) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw)
{
	int ret;
	struct clk_alpha_pll *pll = FUNC5(hw);
	u32 val, mask;

	mask = PLL_OUTCTRL | PLL_RESET_N | PLL_BYPASSNL;
	ret = FUNC3(pll->clkr.regmap, FUNC0(pll), &val);
	if (ret)
		return ret;

	/* If in FSM mode, just vote for it */
	if (val & PLL_VOTE_FSM_ENA) {
		ret = FUNC1(hw);
		if (ret)
			return ret;
		return FUNC7(pll);
	}

	/* Skip if already enabled */
	if ((val & mask) == mask)
		return 0;

	ret = FUNC4(pll->clkr.regmap, FUNC0(pll),
				 PLL_BYPASSNL, PLL_BYPASSNL);
	if (ret)
		return ret;

	/*
	 * H/W requires a 5us delay between disabling the bypass and
	 * de-asserting the reset.
	 */
	FUNC2();
	FUNC6(5);

	ret = FUNC4(pll->clkr.regmap, FUNC0(pll),
				 PLL_RESET_N, PLL_RESET_N);
	if (ret)
		return ret;

	ret = FUNC8(pll);
	if (ret)
		return ret;

	ret = FUNC4(pll->clkr.regmap, FUNC0(pll),
				 PLL_OUTCTRL, PLL_OUTCTRL);

	/* Ensure that the write above goes through before returning. */
	FUNC2();
	return ret;
}