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
struct meson_sclk_div_data {int /*<<< orphan*/  cached_duty; int /*<<< orphan*/  hi; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk_duty {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct clk_duty*,int) ; 
 struct meson_sclk_div_data* FUNC2 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_regmap*,struct meson_sclk_div_data*) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw,
				   struct clk_duty *duty)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct meson_sclk_div_data *sclk = FUNC2(clk);

	if (FUNC0(&sclk->hi)) {
		FUNC1(&sclk->cached_duty, duty, sizeof(*duty));
		FUNC3(clk, sclk);
	}

	return 0;
}