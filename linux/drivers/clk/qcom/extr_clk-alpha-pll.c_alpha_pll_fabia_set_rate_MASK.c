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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FABIA_PLL_RATE_MARGIN ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int FUNC3 (struct clk_alpha_pll*) ; 
 unsigned long FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_alpha_pll* FUNC9 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw, unsigned long rate,
						unsigned long prate)
{
	struct clk_alpha_pll *pll = FUNC9(hw);
	u32 val, l, alpha_width = FUNC5(pll);
	u64 a;
	unsigned long rrate;
	int ret = 0;

	ret = FUNC7(pll->clkr.regmap, FUNC2(pll), &val);
	if (ret)
		return ret;

	rrate = FUNC4(rate, prate, &l, &a, alpha_width);

	/*
	 * Due to limited number of bits for fractional rate programming, the
	 * rounded up rate could be marginally higher than the requested rate.
	 */
	if (rrate > (rate + FABIA_PLL_RATE_MARGIN) || rrate < rate) {
		FUNC6("Call set rate on the PLL with rounded rates!\n");
		return -EINVAL;
	}

	FUNC8(pll->clkr.regmap, FUNC1(pll), l);
	FUNC8(pll->clkr.regmap, FUNC0(pll), a);

	return FUNC3(pll);
}