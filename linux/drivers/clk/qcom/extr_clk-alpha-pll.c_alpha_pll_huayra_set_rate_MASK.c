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
 int EBUSY ; 
 int PLL_ALPHA_EN ; 
 int PLL_ALPHA_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,int*,int*) ; 
 scalar_t__ FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct clk_alpha_pll* FUNC11 (struct clk_hw*) ; 
 int FUNC12 (struct clk_alpha_pll*) ; 

__attribute__((used)) static int FUNC13(struct clk_hw *hw, unsigned long rate,
				     unsigned long prate)
{
	struct clk_alpha_pll *pll = FUNC11(hw);
	u32 l, a, ctl, cur_alpha = 0;

	rate = FUNC3(rate, prate, &l, &a);

	FUNC8(pll->clkr.regmap, FUNC2(pll), &ctl);

	if (ctl & PLL_ALPHA_EN)
		FUNC8(pll->clkr.regmap, FUNC0(pll), &cur_alpha);

	/*
	 * Huayra PLL supports PLL dynamic programming. User can change L_VAL,
	 * without having to go through the power on sequence.
	 */
	if (FUNC4(hw)) {
		if (cur_alpha != a) {
			FUNC7("clock needs to be gated %s\n",
			       FUNC5(hw));
			return -EBUSY;
		}

		FUNC10(pll->clkr.regmap, FUNC1(pll), l);
		/* Ensure that the write above goes to detect L val change. */
		FUNC6();
		return FUNC12(pll);
	}

	FUNC10(pll->clkr.regmap, FUNC1(pll), l);
	FUNC10(pll->clkr.regmap, FUNC0(pll), a);

	if (a == 0)
		FUNC9(pll->clkr.regmap, FUNC2(pll),
				   PLL_ALPHA_EN, 0x0);
	else
		FUNC9(pll->clkr.regmap, FUNC2(pll),
				   PLL_ALPHA_EN | PLL_ALPHA_MODE, PLL_ALPHA_EN);

	return 0;
}