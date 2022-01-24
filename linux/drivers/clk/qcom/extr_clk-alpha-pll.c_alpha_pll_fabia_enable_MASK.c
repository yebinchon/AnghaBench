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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;

/* Variables and functions */
 int FABIA_OPMODE_RUN ; 
 int FABIA_OPMODE_STANDBY ; 
 int FABIA_PLL_OUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int PLL_OUTCTRL ; 
 int PLL_RESET_N ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int PLL_VOTE_FSM_ENA ; 
 int FUNC3 (struct clk_hw*) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 struct clk_alpha_pll* FUNC7 (struct clk_hw*) ; 
 int FUNC8 (struct clk_alpha_pll*) ; 
 int FUNC9 (struct clk_alpha_pll*) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw)
{
	int ret;
	struct clk_alpha_pll *pll = FUNC7(hw);
	u32 val, opmode_val;
	struct regmap *regmap = pll->clkr.regmap;

	ret = FUNC4(regmap, FUNC0(pll), &val);
	if (ret)
		return ret;

	/* If in FSM mode, just vote for it */
	if (val & PLL_VOTE_FSM_ENA) {
		ret = FUNC3(hw);
		if (ret)
			return ret;
		return FUNC8(pll);
	}

	ret = FUNC4(regmap, FUNC1(pll), &opmode_val);
	if (ret)
		return ret;

	/* Skip If PLL is already running */
	if ((opmode_val & FABIA_OPMODE_RUN) && (val & PLL_OUTCTRL))
		return 0;

	ret = FUNC5(regmap, FUNC0(pll), PLL_OUTCTRL, 0);
	if (ret)
		return ret;

	ret = FUNC6(regmap, FUNC1(pll), FABIA_OPMODE_STANDBY);
	if (ret)
		return ret;

	ret = FUNC5(regmap, FUNC0(pll), PLL_RESET_N,
				 PLL_RESET_N);
	if (ret)
		return ret;

	ret = FUNC6(regmap, FUNC1(pll), FABIA_OPMODE_RUN);
	if (ret)
		return ret;

	ret = FUNC9(pll);
	if (ret)
		return ret;

	ret = FUNC5(regmap, FUNC2(pll),
				 FABIA_PLL_OUT_MASK, FABIA_PLL_OUT_MASK);
	if (ret)
		return ret;

	return FUNC5(regmap, FUNC0(pll), PLL_OUTCTRL,
				 PLL_OUTCTRL);
}