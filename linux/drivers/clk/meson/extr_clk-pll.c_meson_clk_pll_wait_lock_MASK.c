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
struct meson_clk_pll_data {int /*<<< orphan*/  l; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 struct meson_clk_pll_data* FUNC0 (struct clk_regmap*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct meson_clk_pll_data *pll = FUNC0(clk);
	int delay = 24000000;

	do {
		/* Is the clock locked now ? */
		if (FUNC1(clk->map, &pll->l))
			return 0;

		delay--;
	} while (delay > 0);

	return -ETIMEDOUT;
}