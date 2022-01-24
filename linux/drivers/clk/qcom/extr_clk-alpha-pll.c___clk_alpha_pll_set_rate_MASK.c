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
struct pll_vco {int val; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; scalar_t__ vco_table; } ;

/* Variables and functions */
 int ALPHA_BITWIDTH ; 
 int EINVAL ; 
 int PLL_ALPHA_EN ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_alpha_pll*) ; 
 int PLL_VCO_MASK ; 
 int PLL_VCO_SHIFT ; 
 struct pll_vco* FUNC4 (struct clk_alpha_pll*,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,unsigned long,int*,int*,int) ; 
 int FUNC6 (struct clk_alpha_pll*,int (*) (struct clk_hw*)) ; 
 int FUNC7 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct clk_alpha_pll* FUNC11 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC12(struct clk_hw *hw, unsigned long rate,
				    unsigned long prate,
				    int (*is_enabled)(struct clk_hw *))
{
	struct clk_alpha_pll *pll = FUNC11(hw);
	const struct pll_vco *vco;
	u32 l, alpha_width = FUNC7(pll);
	u64 a;

	rate = FUNC5(rate, prate, &l, &a, alpha_width);
	vco = FUNC4(pll, rate);
	if (pll->vco_table && !vco) {
		FUNC8("alpha pll not in a valid vco range\n");
		return -EINVAL;
	}

	FUNC10(pll->clkr.regmap, FUNC2(pll), l);

	if (alpha_width > ALPHA_BITWIDTH)
		a <<= alpha_width - ALPHA_BITWIDTH;

	if (alpha_width > 32)
		FUNC10(pll->clkr.regmap, FUNC1(pll), a >> 32);

	FUNC10(pll->clkr.regmap, FUNC0(pll), a);

	if (vco) {
		FUNC9(pll->clkr.regmap, FUNC3(pll),
				   PLL_VCO_MASK << PLL_VCO_SHIFT,
				   vco->val << PLL_VCO_SHIFT);
	}

	FUNC9(pll->clkr.regmap, FUNC3(pll),
			   PLL_ALPHA_EN, PLL_ALPHA_EN);

	return FUNC6(pll, is_enabled);
}