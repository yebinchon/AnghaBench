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
struct meson_sclk_div_data {int /*<<< orphan*/  cached_div; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 struct meson_sclk_div_data* FUNC1 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_regmap*,struct meson_sclk_div_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (struct meson_sclk_div_data*) ; 
 struct clk_regmap* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
			     unsigned long prate)
{
	struct clk_regmap *clk = FUNC5(hw);
	struct meson_sclk_div_data *sclk = FUNC1(clk);
	unsigned long maxdiv = FUNC4(sclk);

	sclk->cached_div = FUNC3(hw, rate, prate, maxdiv);

	if (FUNC0(hw))
		FUNC2(clk, sclk);

	return 0;
}