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
struct clk_hw {int dummy; } ;
struct axs10x_pll_clk {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct axs10x_pll_cfg* pll_cfg; } ;
struct axs10x_pll_cfg {unsigned long rate; int /*<<< orphan*/  odiv; int /*<<< orphan*/  fbdiv; int /*<<< orphan*/  idiv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int PLL_ERROR ; 
 int PLL_LOCK ; 
 int /*<<< orphan*/  PLL_MAX_LOCK_TIME ; 
 int /*<<< orphan*/  PLL_REG_FBDIV ; 
 int /*<<< orphan*/  PLL_REG_IDIV ; 
 int /*<<< orphan*/  PLL_REG_ODIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct axs10x_pll_clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct axs10x_pll_clk* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
			       unsigned long parent_rate)
{
	int i;
	struct axs10x_pll_clk *clk = FUNC4(hw);
	const struct axs10x_pll_cfg *pll_cfg = clk->pll_cfg;

	for (i = 0; pll_cfg[i].rate != 0; i++) {
		if (pll_cfg[i].rate == rate) {
			FUNC1(clk, PLL_REG_IDIV,
					 FUNC0(pll_cfg[i].idiv, 0));
			FUNC1(clk, PLL_REG_FBDIV,
					 FUNC0(pll_cfg[i].fbdiv, 0));
			FUNC1(clk, PLL_REG_ODIV,
					 FUNC0(pll_cfg[i].odiv, 1));

			/*
			 * Wait until CGU relocks and check error status.
			 * If after timeout CGU is unlocked yet return error
			 */
			FUNC5(PLL_MAX_LOCK_TIME);
			if (!(FUNC3(clk->lock) & PLL_LOCK))
				return -ETIMEDOUT;

			if (FUNC3(clk->lock) & PLL_ERROR)
				return -EINVAL;

			return 0;
		}
	}

	FUNC2(clk->dev, "invalid rate=%ld, parent_rate=%ld\n", rate,
			parent_rate);
	return -EINVAL;
}