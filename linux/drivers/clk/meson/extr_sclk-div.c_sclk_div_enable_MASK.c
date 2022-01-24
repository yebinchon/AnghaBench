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
struct meson_sclk_div_data {int dummy; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct meson_sclk_div_data* FUNC0 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_regmap*,struct meson_sclk_div_data*) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct meson_sclk_div_data *sclk = FUNC0(clk);

	FUNC1(clk, sclk);

	return 0;
}