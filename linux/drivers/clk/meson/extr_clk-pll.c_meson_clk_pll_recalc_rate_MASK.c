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
struct meson_clk_pll_data {int /*<<< orphan*/  frac; int /*<<< orphan*/  m; int /*<<< orphan*/  n; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (unsigned long,unsigned int,unsigned int,unsigned int,struct meson_clk_pll_data*) ; 
 struct meson_clk_pll_data* FUNC2 (struct clk_regmap*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct meson_clk_pll_data *pll = FUNC2(clk);
	unsigned int m, n, frac;

	n = FUNC3(clk->map, &pll->n);
	m = FUNC3(clk->map, &pll->m);

	frac = FUNC0(&pll->frac) ?
		FUNC3(clk->map, &pll->frac) :
		0;

	return FUNC1(parent_rate, m, n, frac, pll);
}