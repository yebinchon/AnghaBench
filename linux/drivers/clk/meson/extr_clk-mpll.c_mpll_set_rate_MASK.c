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
struct meson_clk_mpll_data {scalar_t__ lock; int /*<<< orphan*/  n2; int /*<<< orphan*/  sdm; int /*<<< orphan*/  flags; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct meson_clk_mpll_data* FUNC2 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 struct clk_regmap* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw,
			 unsigned long rate,
			 unsigned long parent_rate)
{
	struct clk_regmap *clk = FUNC7(hw);
	struct meson_clk_mpll_data *mpll = FUNC2(clk);
	unsigned int sdm, n2;
	unsigned long flags = 0;

	FUNC4(rate, parent_rate, &sdm, &n2, mpll->flags);

	if (mpll->lock)
		FUNC5(mpll->lock, flags);
	else
		FUNC0(mpll->lock);

	/* Set the fractional part */
	FUNC3(clk->map, &mpll->sdm, sdm);

	/* Set the integer divider part */
	FUNC3(clk->map, &mpll->n2, n2);

	if (mpll->lock)
		FUNC6(mpll->lock, flags);
	else
		FUNC1(mpll->lock);

	return 0;
}