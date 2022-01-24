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
struct meson_sclk_div_data {unsigned int cached_div; int /*<<< orphan*/  cached_duty; int /*<<< orphan*/  div; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct meson_sclk_div_data* FUNC1 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct meson_sclk_div_data*) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct meson_sclk_div_data *sclk = FUNC1(clk);
	unsigned int val;

	val = FUNC0(clk->map, &sclk->div);

	/* if the divider is initially disabled, assume max */
	if (!val)
		sclk->cached_div = FUNC3(sclk);
	else
		sclk->cached_div = val + 1;

	FUNC2(hw, &sclk->cached_duty);
}