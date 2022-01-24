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
struct owl_pll_hw {int /*<<< orphan*/  bit_idx; int /*<<< orphan*/  reg; } ;
struct owl_clk_common {int /*<<< orphan*/  regmap; } ;
struct owl_pll {struct owl_clk_common common; struct owl_pll_hw pll_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct owl_pll* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct owl_pll *pll = FUNC1(hw);
	struct owl_pll_hw *pll_hw = &pll->pll_hw;
	const struct owl_clk_common *common = &pll->common;
	u32 reg;

	FUNC2(common->regmap, pll_hw->reg, &reg);

	return !!(reg & FUNC0(pll_hw->bit_idx));
}