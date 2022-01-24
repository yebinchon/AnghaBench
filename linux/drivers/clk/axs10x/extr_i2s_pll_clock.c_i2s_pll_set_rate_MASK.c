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
struct i2s_pll_clk {int /*<<< orphan*/  dev; } ;
struct i2s_pll_cfg {unsigned long rate; int /*<<< orphan*/  odiv1; int /*<<< orphan*/  odiv0; int /*<<< orphan*/  fbdiv; int /*<<< orphan*/  idiv; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PLL_FBDIV_REG ; 
 int /*<<< orphan*/  PLL_IDIV_REG ; 
 int /*<<< orphan*/  PLL_ODIV0_REG ; 
 int /*<<< orphan*/  PLL_ODIV1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 struct i2s_pll_cfg* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct i2s_pll_clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2s_pll_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
			unsigned long parent_rate)
{
	struct i2s_pll_clk *clk = FUNC3(hw);
	const struct i2s_pll_cfg *pll_cfg = FUNC1(parent_rate);
	int i;

	if (!pll_cfg) {
		FUNC0(clk->dev, "invalid parent rate=%ld\n", parent_rate);
		return -EINVAL;
	}

	for (i = 0; pll_cfg[i].rate != 0; i++) {
		if (pll_cfg[i].rate == rate) {
			FUNC2(clk, PLL_IDIV_REG, pll_cfg[i].idiv);
			FUNC2(clk, PLL_FBDIV_REG, pll_cfg[i].fbdiv);
			FUNC2(clk, PLL_ODIV0_REG, pll_cfg[i].odiv0);
			FUNC2(clk, PLL_ODIV1_REG, pll_cfg[i].odiv1);
			return 0;
		}
	}

	FUNC0(clk->dev, "invalid rate=%ld, parent_rate=%ld\n", rate,
			parent_rate);
	return -EINVAL;
}