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
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_pll {int /*<<< orphan*/  mode_reg; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLL_BYPASSNL ; 
 int PLL_OUTCTRL ; 
 int PLL_RESET_N ; 
 int PLL_VOTE_FSM_ENA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_pll* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_pll *pll = FUNC2(hw);
	int ret;
	u32 mask, val;

	mask = PLL_OUTCTRL | PLL_RESET_N | PLL_BYPASSNL;
	ret = FUNC0(pll->clkr.regmap, pll->mode_reg, &val);
	if (ret)
		return ret;

	/* Skip if already enabled or in FSM mode */
	if ((val & mask) == mask || val & PLL_VOTE_FSM_ENA)
		return 0;

	/* Disable PLL bypass mode. */
	ret = FUNC1(pll->clkr.regmap, pll->mode_reg, PLL_BYPASSNL,
				 PLL_BYPASSNL);
	if (ret)
		return ret;

	/*
	 * H/W requires a 5us delay between disabling the bypass and
	 * de-asserting the reset. Delay 10us just to be safe.
	 */
	FUNC3(10);

	/* De-assert active-low PLL reset. */
	ret = FUNC1(pll->clkr.regmap, pll->mode_reg, PLL_RESET_N,
				 PLL_RESET_N);
	if (ret)
		return ret;

	/* Wait until PLL is locked. */
	FUNC3(50);

	/* Enable PLL output. */
	return FUNC1(pll->clkr.regmap, pll->mode_reg, PLL_OUTCTRL,
				 PLL_OUTCTRL);
}