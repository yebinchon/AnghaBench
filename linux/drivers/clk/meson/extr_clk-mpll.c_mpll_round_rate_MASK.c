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
struct meson_clk_mpll_data {int /*<<< orphan*/  flags; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct meson_clk_mpll_data* FUNC0 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 long FUNC2 (unsigned long,unsigned int,unsigned int) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw,
			    unsigned long rate,
			    unsigned long *parent_rate)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct meson_clk_mpll_data *mpll = FUNC0(clk);
	unsigned int sdm, n2;

	FUNC1(rate, *parent_rate, &sdm, &n2, mpll->flags);
	return FUNC2(*parent_rate, sdm, n2);
}