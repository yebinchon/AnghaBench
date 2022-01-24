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
typedef  int u64 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;

/* Variables and functions */
 int ALPHA_BITWIDTH ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PLL_ALPHA_EN ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_alpha_pll*) ; 
 unsigned long FUNC5 (int,int,int,int) ; 
 int FUNC6 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_alpha_pll* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC9(struct clk_hw *hw, unsigned long parent_rate)
{
	u32 l, low, high, ctl;
	u64 a = 0, prate = parent_rate;
	struct clk_alpha_pll *pll = FUNC8(hw);
	u32 alpha_width = FUNC6(pll);

	FUNC7(pll->clkr.regmap, FUNC3(pll), &l);

	FUNC7(pll->clkr.regmap, FUNC4(pll), &ctl);
	if (ctl & PLL_ALPHA_EN) {
		FUNC7(pll->clkr.regmap, FUNC1(pll), &low);
		if (alpha_width > 32) {
			FUNC7(pll->clkr.regmap, FUNC2(pll),
				    &high);
			a = (u64)high << 32 | low;
		} else {
			a = low & FUNC0(alpha_width - 1, 0);
		}

		if (alpha_width > ALPHA_BITWIDTH)
			a >>= alpha_width - ALPHA_BITWIDTH;
	}

	return FUNC5(prate, l, a, alpha_width);
}