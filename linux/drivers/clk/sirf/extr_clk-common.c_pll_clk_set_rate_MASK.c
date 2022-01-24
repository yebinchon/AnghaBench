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
struct clk_pll {unsigned long regofs; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 unsigned long MHZ ; 
 unsigned long SIRFSOC_CLKC_PLL1_CFG0 ; 
 unsigned long SIRFSOC_CLKC_PLL1_CFG1 ; 
 unsigned long SIRFSOC_CLKC_PLL1_CFG2 ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct clk_pll* FUNC5 (struct clk_hw*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
	unsigned long parent_rate)
{
	struct clk_pll *clk = FUNC5(hw);
	unsigned long fin, nf, nr, od, reg;

	/*
	 * fout = fin * nf / (nr * od);
	 * set od = 1, nr = fin/MHz, so fout = nf * MHz
	 */

	nf = rate / MHZ;
	if (FUNC6((rate % MHZ) || nf > FUNC0(13) || nf < 1))
		return -EINVAL;

	fin = parent_rate;
	FUNC1(fin < MHZ);

	nr = fin / MHZ;
	FUNC1((fin % MHZ) || nr > FUNC0(6));

	od = 1;

	reg = (nf - 1) | ((nr - 1) << 13) | ((od - 1) << 19);
	FUNC3(reg, clk->regofs);

	reg = clk->regofs + SIRFSOC_CLKC_PLL1_CFG1 - SIRFSOC_CLKC_PLL1_CFG0;
	FUNC3((nf >> 1) - 1, reg);

	reg = clk->regofs + SIRFSOC_CLKC_PLL1_CFG2 - SIRFSOC_CLKC_PLL1_CFG0;
	while (!(FUNC2(reg) & FUNC0(6)))
		FUNC4();

	return 0;
}