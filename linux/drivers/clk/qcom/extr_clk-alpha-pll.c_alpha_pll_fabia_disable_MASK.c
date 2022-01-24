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
 int /*<<< orphan*/  FABIA_OPMODE_STANDBY ; 
 int /*<<< orphan*/  FABIA_PLL_OUT_MASK ; 
 int PLL_FSM_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  PLL_OUTCTRL ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_alpha_pll* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC8(struct clk_hw *hw)
{
	int ret;
	struct clk_alpha_pll *pll = FUNC7(hw);
	u32 val;
	struct regmap *regmap = pll->clkr.regmap;

	ret = FUNC4(regmap, FUNC0(pll), &val);
	if (ret)
		return;

	/* If in FSM mode, just unvote it */
	if (val & PLL_FSM_ENA) {
		FUNC3(hw);
		return;
	}

	ret = FUNC5(regmap, FUNC0(pll), PLL_OUTCTRL, 0);
	if (ret)
		return;

	/* Disable main outputs */
	ret = FUNC5(regmap, FUNC2(pll), FABIA_PLL_OUT_MASK,
				 0);
	if (ret)
		return;

	/* Place the PLL in STANDBY */
	FUNC6(regmap, FUNC1(pll), FABIA_OPMODE_STANDBY);
}