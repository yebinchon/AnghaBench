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
typedef  unsigned long u32 ;
struct owl_pll_hw {unsigned long shift; scalar_t__ width; unsigned long bfreq; int /*<<< orphan*/  reg; scalar_t__ table; } ;
struct owl_clk_common {int /*<<< orphan*/  regmap; } ;
struct owl_pll {struct owl_clk_common common; struct owl_pll_hw pll_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,unsigned long) ; 
 struct owl_pll* FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (struct owl_pll_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct owl_pll *pll = FUNC1(hw);
	struct owl_pll_hw *pll_hw = &pll->pll_hw;
	const struct owl_clk_common *common = &pll->common;
	u32 val;

	if (pll_hw->table) {
		FUNC3(common->regmap, pll_hw->reg, &val);

		val = val >> pll_hw->shift;
		val &= FUNC2(pll_hw);

		return FUNC0(pll_hw->table, val);
	}

	/* fixed frequency */
	if (pll_hw->width == 0)
		return pll_hw->bfreq;

	FUNC3(common->regmap, pll_hw->reg, &val);

	val = val >> pll_hw->shift;
	val &= FUNC2(pll_hw);

	return pll_hw->bfreq * val;
}