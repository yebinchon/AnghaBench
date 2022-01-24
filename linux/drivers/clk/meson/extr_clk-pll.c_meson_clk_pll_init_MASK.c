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
struct meson_clk_pll_data {int /*<<< orphan*/  rst; scalar_t__ init_count; int /*<<< orphan*/  init_regs; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct meson_clk_pll_data* FUNC0 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct meson_clk_pll_data *pll = FUNC0(clk);

	if (pll->init_count) {
		FUNC1(clk->map, &pll->rst, 1);
		FUNC2(clk->map, pll->init_regs,
				       pll->init_count);
		FUNC1(clk->map, &pll->rst, 0);
	}
}