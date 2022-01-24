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
struct samsung_clk_pll {scalar_t__ con_reg; } ;
struct clk_hw {int dummy; } ;
typedef  int s16 ;

/* Variables and functions */
 int PLL2650XX_KDIV_MASK ; 
 int PLL2650XX_MDIV_MASK ; 
 int PLL2650XX_MDIV_SHIFT ; 
 int PLL2650XX_PDIV_MASK ; 
 int PLL2650XX_PDIV_SHIFT ; 
 int PLL2650XX_SDIV_MASK ; 
 int PLL2650XX_SDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__) ; 
 struct samsung_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
				unsigned long parent_rate)
{
	struct samsung_clk_pll *pll = FUNC2(hw);
	u32 mdiv, pdiv, sdiv, pll_con0, pll_con2;
	s16 kdiv;
	u64 fvco = parent_rate;

	pll_con0 = FUNC1(pll->con_reg);
	pll_con2 = FUNC1(pll->con_reg + 8);
	mdiv = (pll_con0 >> PLL2650XX_MDIV_SHIFT) & PLL2650XX_MDIV_MASK;
	pdiv = (pll_con0 >> PLL2650XX_PDIV_SHIFT) & PLL2650XX_PDIV_MASK;
	sdiv = (pll_con0 >> PLL2650XX_SDIV_SHIFT) & PLL2650XX_SDIV_MASK;
	kdiv = (s16)(pll_con2 & PLL2650XX_KDIV_MASK);

	fvco *= (mdiv << 16) + kdiv;
	FUNC0(fvco, (pdiv << sdiv));
	fvco >>= 16;

	return (unsigned long)fvco;
}