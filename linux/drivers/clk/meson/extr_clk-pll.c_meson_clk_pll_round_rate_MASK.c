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
struct meson_clk_pll_data {int /*<<< orphan*/  frac; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (unsigned long,unsigned int,unsigned int,unsigned int,struct meson_clk_pll_data*) ; 
 unsigned int FUNC2 (unsigned long,unsigned long,unsigned int,unsigned int,struct meson_clk_pll_data*) ; 
 int FUNC3 (unsigned long,unsigned long,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ; 
 struct meson_clk_pll_data* FUNC4 (struct clk_regmap*) ; 
 long FUNC5 (struct clk_hw*,unsigned long) ; 
 struct clk_regmap* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC7(struct clk_hw *hw, unsigned long rate,
				     unsigned long *parent_rate)
{
	struct clk_regmap *clk = FUNC6(hw);
	struct meson_clk_pll_data *pll = FUNC4(clk);
	unsigned int m, n, frac;
	unsigned long round;
	int ret;

	ret = FUNC3(rate, *parent_rate, &m, &n, pll);
	if (ret)
		return FUNC5(hw, *parent_rate);

	round = FUNC1(*parent_rate, m, n, 0, pll);

	if (!FUNC0(&pll->frac) || rate == round)
		return round;

	/*
	 * The rate provided by the setting is not an exact match, let's
	 * try to improve the result using the fractional parameter
	 */
	frac = FUNC2(rate, *parent_rate, m, n, pll);

	return FUNC1(*parent_rate, m, n, frac, pll);
}