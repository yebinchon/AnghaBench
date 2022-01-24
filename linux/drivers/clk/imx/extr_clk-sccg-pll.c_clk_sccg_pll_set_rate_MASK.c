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
struct clk_sccg_pll_setup {int /*<<< orphan*/  divq; int /*<<< orphan*/  divr2; int /*<<< orphan*/  divr1; int /*<<< orphan*/  divf2; int /*<<< orphan*/  divf1; int /*<<< orphan*/  bypass; } ;
struct clk_sccg_pll {scalar_t__ base; struct clk_sccg_pll_setup setup; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ PLL_CFG0 ; 
 scalar_t__ PLL_CFG2 ; 
 int PLL_DIVF1_MASK ; 
 int PLL_DIVF2_MASK ; 
 int PLL_DIVQ_MASK ; 
 int PLL_DIVR1_MASK ; 
 int PLL_DIVR2_MASK ; 
 int SSCG_PLL_BYPASS_MASK ; 
 int FUNC1 (struct clk_sccg_pll*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 struct clk_sccg_pll* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
			    unsigned long parent_rate)
{
	struct clk_sccg_pll *pll = FUNC4(hw);
	struct clk_sccg_pll_setup *setup = &pll->setup;
	u32 val;

	/* set bypass here too since the parent might be the same */
	val = FUNC2(pll->base + PLL_CFG0);
	val &= ~SSCG_PLL_BYPASS_MASK;
	val |= FUNC0(SSCG_PLL_BYPASS_MASK, setup->bypass);
	FUNC5(val, pll->base + PLL_CFG0);

	val = FUNC3(pll->base + PLL_CFG2);
	val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
	val &= ~(PLL_DIVR1_MASK | PLL_DIVR2_MASK | PLL_DIVQ_MASK);
	val |= FUNC0(PLL_DIVF1_MASK, setup->divf1);
	val |= FUNC0(PLL_DIVF2_MASK, setup->divf2);
	val |= FUNC0(PLL_DIVR1_MASK, setup->divr1);
	val |= FUNC0(PLL_DIVR2_MASK, setup->divr2);
	val |= FUNC0(PLL_DIVQ_MASK, setup->divq);
	FUNC6(val, pll->base + PLL_CFG2);

	return FUNC1(pll);
}