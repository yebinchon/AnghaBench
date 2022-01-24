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
struct meson_sclk_div_data {int /*<<< orphan*/  div; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct meson_sclk_div_data* FUNC1 (struct clk_regmap*) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct meson_sclk_div_data *sclk = FUNC1(clk);

	if (FUNC0(clk->map, &sclk->div))
		return 1;

	return 0;
}