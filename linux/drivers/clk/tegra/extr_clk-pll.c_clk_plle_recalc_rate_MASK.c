#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
typedef  unsigned long u32 ;
struct tegra_clk_pll {TYPE_2__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* div_nmp; } ;
struct TYPE_3__ {unsigned long divp_shift; unsigned long divn_shift; unsigned long divm_shift; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct tegra_clk_pll*) ; 
 unsigned long FUNC1 (struct tegra_clk_pll*) ; 
 unsigned long FUNC2 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (struct tegra_clk_pll*) ; 
 struct tegra_clk_pll* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC6(struct clk_hw *hw,
					 unsigned long parent_rate)
{
	struct tegra_clk_pll *pll = FUNC5(hw);
	u32 val = FUNC4(pll);
	u32 divn = 0, divm = 0, divp = 0;
	u64 rate = parent_rate;

	divp = (val >> pll->params->div_nmp->divp_shift) & (FUNC2(pll));
	divn = (val >> pll->params->div_nmp->divn_shift) & (FUNC1(pll));
	divm = (val >> pll->params->div_nmp->divm_shift) & (FUNC0(pll));
	divm *= divp;

	rate *= divn;
	FUNC3(rate, divm);
	return rate;
}