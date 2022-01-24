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
struct xgene_clk_pll {scalar_t__ pll_offset; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int REGSPEC_RESET_F1_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 struct xgene_clk_pll* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct xgene_clk_pll *pllclk = FUNC2(hw);
	u32 data;

	data = FUNC3(pllclk->reg + pllclk->pll_offset);
	FUNC1("%s pll %s\n", FUNC0(hw),
		data & REGSPEC_RESET_F1_MASK ? "disabled" : "enabled");

	return data & REGSPEC_RESET_F1_MASK ? 0 : 1;
}