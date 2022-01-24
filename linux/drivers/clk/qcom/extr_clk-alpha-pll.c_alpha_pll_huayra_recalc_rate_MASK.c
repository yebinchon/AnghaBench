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
 int FUNC0 (scalar_t__) ; 
 int PLL_ALPHA_EN ; 
 int PLL_ALPHA_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int PLL_HUAYRA_M_MASK ; 
 int PLL_HUAYRA_M_SHIFT ; 
 scalar_t__ PLL_HUAYRA_M_WIDTH ; 
 int PLL_HUAYRA_N_MASK ; 
 int PLL_HUAYRA_N_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_alpha_pll*) ; 
 unsigned long FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_alpha_pll* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC8(struct clk_hw *hw, unsigned long parent_rate)
{
	u64 rate = parent_rate, tmp;
	struct clk_alpha_pll *pll = FUNC7(hw);
	u32 l, alpha = 0, ctl, alpha_m, alpha_n;

	FUNC6(pll->clkr.regmap, FUNC2(pll), &l);
	FUNC6(pll->clkr.regmap, FUNC3(pll), &ctl);

	if (ctl & PLL_ALPHA_EN) {
		FUNC6(pll->clkr.regmap, FUNC1(pll), &alpha);
		/*
		 * Depending upon alpha_mode, it can be treated as M/N value or
		 * as a two’s compliment number. When alpha_mode=1,
		 * pll_alpha_val<15:8>=M and pll_apla_val<7:0>=N
		 *
		 *		Fout=FIN*(L+(M/N))
		 *
		 * M is a signed number (-128 to 127) and N is unsigned
		 * (0 to 255). M/N has to be within +/-0.5.
		 *
		 * When alpha_mode=0, it is a two’s compliment number in the
		 * range [-0.5, 0.5).
		 *
		 *		Fout=FIN*(L+(alpha_val)/2^16)
		 *
		 * where alpha_val is two’s compliment number.
		 */
		if (!(ctl & PLL_ALPHA_MODE))
			return FUNC4(rate, l, alpha);

		alpha_m = alpha >> PLL_HUAYRA_M_SHIFT & PLL_HUAYRA_M_MASK;
		alpha_n = alpha >> PLL_HUAYRA_N_SHIFT & PLL_HUAYRA_N_MASK;

		rate *= l;
		tmp = parent_rate;
		if (alpha_m >= FUNC0(PLL_HUAYRA_M_WIDTH - 1)) {
			alpha_m = FUNC0(PLL_HUAYRA_M_WIDTH) - alpha_m;
			tmp *= alpha_m;
			FUNC5(tmp, alpha_n);
			rate -= tmp;
		} else {
			tmp *= alpha_m;
			FUNC5(tmp, alpha_n);
			rate += tmp;
		}

		return rate;
	}

	return FUNC4(rate, l, alpha);
}