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
struct meson_clk_pll_data {int /*<<< orphan*/  en; int /*<<< orphan*/  rst; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct meson_clk_pll_data* FUNC0 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct meson_clk_pll_data *pll = FUNC0(clk);

	/* Put the pll is in reset */
	FUNC1(clk->map, &pll->rst, 1);

	/* Disable the pll */
	FUNC1(clk->map, &pll->en, 0);
}