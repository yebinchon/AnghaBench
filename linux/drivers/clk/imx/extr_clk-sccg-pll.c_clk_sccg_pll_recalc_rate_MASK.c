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
typedef  int u64 ;
typedef  int u32 ;
struct clk_sccg_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PLL_CFG0 ; 
 scalar_t__ PLL_CFG2 ; 
 int /*<<< orphan*/  PLL_DIVF1_MASK ; 
 int /*<<< orphan*/  PLL_DIVF2_MASK ; 
 int /*<<< orphan*/  PLL_DIVQ_MASK ; 
 int /*<<< orphan*/  PLL_DIVR1_MASK ; 
 int /*<<< orphan*/  PLL_DIVR2_MASK ; 
 int SSCG_PLL_BYPASS1_MASK ; 
 int SSCG_PLL_BYPASS2_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 struct clk_sccg_pll* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
					 unsigned long parent_rate)
{
	struct clk_sccg_pll *pll = FUNC4(hw);
	u32 val, divr1, divf1, divr2, divf2, divq;
	u64 temp64;

	val = FUNC3(pll->base + PLL_CFG2);
	divr1 = FUNC0(PLL_DIVR1_MASK, val);
	divr2 = FUNC0(PLL_DIVR2_MASK, val);
	divf1 = FUNC0(PLL_DIVF1_MASK, val);
	divf2 = FUNC0(PLL_DIVF2_MASK, val);
	divq = FUNC0(PLL_DIVQ_MASK, val);

	temp64 = parent_rate;

	val = FUNC2(pll->base + PLL_CFG0);
	if (val & SSCG_PLL_BYPASS2_MASK) {
		temp64 = parent_rate;
	} else if (val & SSCG_PLL_BYPASS1_MASK) {
		temp64 *= divf2;
		FUNC1(temp64, (divr2 + 1) * (divq + 1));
	} else {
		temp64 *= 2;
		temp64 *= (divf1 + 1) * (divf2 + 1);
		FUNC1(temp64, (divr1 + 1) * (divr2 + 1) * (divq + 1));
	}

	return temp64;
}