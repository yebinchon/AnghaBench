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
struct meson_clk_dualdiv_param {int dummy; } ;
struct meson_clk_dualdiv_data {int dummy; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct meson_clk_dualdiv_param* FUNC0 (unsigned long,unsigned long,struct meson_clk_dualdiv_data*) ; 
 long FUNC1 (unsigned long,struct meson_clk_dualdiv_param const*) ; 
 struct meson_clk_dualdiv_data* FUNC2 (struct clk_regmap*) ; 
 long FUNC3 (struct clk_hw*,unsigned long) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC5(struct clk_hw *hw, unsigned long rate,
					 unsigned long *parent_rate)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct meson_clk_dualdiv_data *dualdiv = FUNC2(clk);
	const struct meson_clk_dualdiv_param *setting =
		FUNC0(rate, *parent_rate, dualdiv);

	if (!setting)
		return FUNC3(hw, *parent_rate);

	return FUNC1(*parent_rate, setting);
}