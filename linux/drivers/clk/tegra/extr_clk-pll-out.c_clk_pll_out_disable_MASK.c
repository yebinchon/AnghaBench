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
struct tegra_clk_pll_out {scalar_t__ lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tegra_clk_pll_out*) ; 
 int FUNC1 (struct tegra_clk_pll_out*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 struct tegra_clk_pll_out* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct clk_hw *hw)
{
	struct tegra_clk_pll_out *pll_out = FUNC5(hw);
	unsigned long flags = 0;
	u32 val;

	if (pll_out->lock)
		FUNC3(pll_out->lock, flags);

	val = FUNC2(pll_out->reg);

	val &= ~(FUNC0(pll_out) | FUNC1(pll_out));

	FUNC7(val, pll_out->reg);
	FUNC6(2);

	if (pll_out->lock)
		FUNC4(pll_out->lock, flags);
}