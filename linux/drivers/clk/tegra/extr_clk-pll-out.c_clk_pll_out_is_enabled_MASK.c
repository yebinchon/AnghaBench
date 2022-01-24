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
struct tegra_clk_pll_out {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tegra_clk_pll_out*) ; 
 int FUNC1 (struct tegra_clk_pll_out*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct tegra_clk_pll_out* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct tegra_clk_pll_out *pll_out = FUNC3(hw);
	u32 val = FUNC2(pll_out->reg);
	int state;

	state = (val & FUNC0(pll_out)) ? 1 : 0;
	if (!(val & (FUNC1(pll_out))))
		state = 0;
	return state;
}