#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct pistachio_pll_rate_table {int refdiv; int fref; int fbdiv; int frac; int postdiv1; int postdiv2; } ;
struct pistachio_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long MAX_OUTPUT_FRAC ; 
 int MAX_VCO_FRAC_FRAC ; 
 unsigned long MIN_OUTPUT_FRAC ; 
 int MIN_PFD ; 
 int MIN_VCO_FRAC_FRAC ; 
 int /*<<< orphan*/  PLL_CTRL1 ; 
 int PLL_CTRL1_FBDIV_MASK ; 
 int PLL_CTRL1_FBDIV_SHIFT ; 
 int PLL_CTRL1_REFDIV_MASK ; 
 int PLL_CTRL1_REFDIV_SHIFT ; 
 int /*<<< orphan*/  PLL_CTRL2 ; 
 int PLL_FRAC_CTRL2_FRAC_MASK ; 
 int PLL_FRAC_CTRL2_FRAC_SHIFT ; 
 int PLL_FRAC_CTRL2_POSTDIV1_MASK ; 
 int PLL_FRAC_CTRL2_POSTDIV1_SHIFT ; 
 int PLL_FRAC_CTRL2_POSTDIV2_MASK ; 
 int PLL_FRAC_CTRL2_POSTDIV2_SHIFT ; 
 int /*<<< orphan*/  PLL_MODE_FRAC ; 
 int /*<<< orphan*/  PLL_MODE_INT ; 
 char* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 struct pistachio_pll_rate_table* FUNC3 (struct pistachio_clk_pll*,unsigned long,unsigned long) ; 
 int FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pistachio_clk_pll*) ; 
 int FUNC6 (struct pistachio_clk_pll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pistachio_clk_pll*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 struct pistachio_clk_pll* FUNC9 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw, unsigned long rate,
				    unsigned long parent_rate)
{
	struct pistachio_clk_pll *pll = FUNC9(hw);
	struct pistachio_pll_rate_table *params;
	int enabled = FUNC4(hw);
	u64 val, vco, old_postdiv1, old_postdiv2;
	const char *name = FUNC0(hw);

	if (rate < MIN_OUTPUT_FRAC || rate > MAX_OUTPUT_FRAC)
		return -EINVAL;

	params = FUNC3(pll, parent_rate, rate);
	if (!params || !params->refdiv)
		return -EINVAL;

	/* calculate vco */
	vco = params->fref;
	vco *= (params->fbdiv << 24) + params->frac;
	vco = FUNC1(vco, params->refdiv << 24);

	if (vco < MIN_VCO_FRAC_FRAC || vco > MAX_VCO_FRAC_FRAC)
		FUNC8("%s: VCO %llu is out of range %lu..%lu\n", name, vco,
			MIN_VCO_FRAC_FRAC, MAX_VCO_FRAC_FRAC);

	val = FUNC1(params->fref, params->refdiv);
	if (val < MIN_PFD)
		FUNC8("%s: PFD %llu is too low (min %lu)\n",
			name, val, MIN_PFD);
	if (val > vco / 16)
		FUNC8("%s: PFD %llu is too high (max %llu)\n",
			name, val, vco / 16);

	val = FUNC6(pll, PLL_CTRL1);
	val &= ~((PLL_CTRL1_REFDIV_MASK << PLL_CTRL1_REFDIV_SHIFT) |
		 (PLL_CTRL1_FBDIV_MASK << PLL_CTRL1_FBDIV_SHIFT));
	val |= (params->refdiv << PLL_CTRL1_REFDIV_SHIFT) |
		(params->fbdiv << PLL_CTRL1_FBDIV_SHIFT);
	FUNC7(pll, val, PLL_CTRL1);

	val = FUNC6(pll, PLL_CTRL2);

	old_postdiv1 = (val >> PLL_FRAC_CTRL2_POSTDIV1_SHIFT) &
		       PLL_FRAC_CTRL2_POSTDIV1_MASK;
	old_postdiv2 = (val >> PLL_FRAC_CTRL2_POSTDIV2_SHIFT) &
		       PLL_FRAC_CTRL2_POSTDIV2_MASK;
	if (enabled &&
	    (params->postdiv1 != old_postdiv1 ||
	     params->postdiv2 != old_postdiv2))
		FUNC8("%s: changing postdiv while PLL is enabled\n", name);

	if (params->postdiv2 > params->postdiv1)
		FUNC8("%s: postdiv2 should not exceed postdiv1\n", name);

	val &= ~((PLL_FRAC_CTRL2_FRAC_MASK << PLL_FRAC_CTRL2_FRAC_SHIFT) |
		 (PLL_FRAC_CTRL2_POSTDIV1_MASK <<
		  PLL_FRAC_CTRL2_POSTDIV1_SHIFT) |
		 (PLL_FRAC_CTRL2_POSTDIV2_MASK <<
		  PLL_FRAC_CTRL2_POSTDIV2_SHIFT));
	val |= (params->frac << PLL_FRAC_CTRL2_FRAC_SHIFT) |
		(params->postdiv1 << PLL_FRAC_CTRL2_POSTDIV1_SHIFT) |
		(params->postdiv2 << PLL_FRAC_CTRL2_POSTDIV2_SHIFT);
	FUNC7(pll, val, PLL_CTRL2);

	/* set operating mode */
	if (params->frac)
		FUNC2(hw, PLL_MODE_FRAC);
	else
		FUNC2(hw, PLL_MODE_INT);

	if (enabled)
		FUNC5(pll);

	return 0;
}