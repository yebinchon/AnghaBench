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
struct clk_pll {int regofs; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned long MHZ ; 
 int SIRFSOC_CLKC_PLL1_CFG0 ; 
 int SIRFSOC_CLKC_PLL1_CFG2 ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int) ; 
 struct clk_pll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
	unsigned long parent_rate)
{
	unsigned long fin = parent_rate;
	struct clk_pll *clk = FUNC3(hw);
	u32 regcfg2 = clk->regofs + SIRFSOC_CLKC_PLL1_CFG2 -
		SIRFSOC_CLKC_PLL1_CFG0;

	if (FUNC2(regcfg2) & FUNC0(2)) {
		/* pll bypass mode */
		return fin;
	} else {
		/* fout = fin * nf / nr / od */
		u32 cfg0 = FUNC2(clk->regofs);
		u32 nf = (cfg0 & (FUNC0(13) - 1)) + 1;
		u32 nr = ((cfg0 >> 13) & (FUNC0(6) - 1)) + 1;
		u32 od = ((cfg0 >> 19) & (FUNC0(4) - 1)) + 1;
		FUNC1(fin % MHZ);
		return fin / MHZ * nf / nr / od * MHZ;
	}
}