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
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct clk_alpha_pll* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct clk_hw *hw)
{
	int ret;
	struct clk_alpha_pll *pll = FUNC5(hw);
	u32 val, mask;

	ret = FUNC3(pll->clkr.regmap, FUNC0(pll), &val);
	if (ret)
		return;

	/* If in FSM mode, just unvote it */
	if (val & PLL_VOTE_FSM_ENA) {
		FUNC1(hw);
		return;
	}

	mask = PLL_OUTCTRL;
	FUNC4(pll->clkr.regmap, FUNC0(pll), mask, 0);

	/* Delay of 2 output clock ticks required until output is disabled */
	FUNC2();
	FUNC6(1);

	mask = PLL_RESET_N | PLL_BYPASSNL;
	FUNC4(pll->clkr.regmap, FUNC0(pll), mask, 0);
}