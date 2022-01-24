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
typedef  int u32 ;
struct zynq_pll {int lockbit; int /*<<< orphan*/  lock; int /*<<< orphan*/  pll_status; int /*<<< orphan*/  pll_ctrl; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLLCTRL_PWRDWN_MASK ; 
 int PLLCTRL_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct zynq_pll* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw)
{
	unsigned long flags = 0;
	u32 reg;
	struct zynq_pll *clk = FUNC4(hw);

	if (FUNC6(hw))
		return 0;

	FUNC0("PLL: enable\n");

	/* Power up PLL and wait for lock */
	FUNC2(clk->lock, flags);

	reg = FUNC1(clk->pll_ctrl);
	reg &= ~(PLLCTRL_RESET_MASK | PLLCTRL_PWRDWN_MASK);
	FUNC5(reg, clk->pll_ctrl);
	while (!(FUNC1(clk->pll_status) & (1 << clk->lockbit)))
		;

	FUNC3(clk->lock, flags);

	return 0;
}