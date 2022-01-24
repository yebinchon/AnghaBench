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
struct meson_clk_pll_data {int /*<<< orphan*/  rst; int /*<<< orphan*/  en; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 struct meson_clk_pll_data* FUNC1 (struct clk_regmap*) ; 
 scalar_t__ FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct meson_clk_pll_data *pll = FUNC1(clk);

	/* do nothing if the PLL is already enabled */
	if (FUNC0(hw))
		return 0;

	/* Make sure the pll is in reset */
	FUNC3(clk->map, &pll->rst, 1);

	/* Enable the pll */
	FUNC3(clk->map, &pll->en, 1);

	/* Take the pll out reset */
	FUNC3(clk->map, &pll->rst, 0);

	if (FUNC2(hw))
		return -EIO;

	return 0;
}