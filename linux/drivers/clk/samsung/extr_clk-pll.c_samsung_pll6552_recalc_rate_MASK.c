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
struct samsung_clk_pll {scalar_t__ type; int /*<<< orphan*/  con_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLL6552_MDIV_MASK ; 
 int PLL6552_MDIV_SHIFT ; 
 int PLL6552_MDIV_SHIFT_2416 ; 
 int PLL6552_PDIV_MASK ; 
 int PLL6552_PDIV_SHIFT ; 
 int PLL6552_PDIV_SHIFT_2416 ; 
 int PLL6552_SDIV_MASK ; 
 int PLL6552_SDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ pll_6552_s3c2416 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct samsung_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct samsung_clk_pll *pll = FUNC2(hw);
	u32 mdiv, pdiv, sdiv, pll_con;
	u64 fvco = parent_rate;

	pll_con = FUNC1(pll->con_reg);
	if (pll->type == pll_6552_s3c2416) {
		mdiv = (pll_con >> PLL6552_MDIV_SHIFT_2416) & PLL6552_MDIV_MASK;
		pdiv = (pll_con >> PLL6552_PDIV_SHIFT_2416) & PLL6552_PDIV_MASK;
	} else {
		mdiv = (pll_con >> PLL6552_MDIV_SHIFT) & PLL6552_MDIV_MASK;
		pdiv = (pll_con >> PLL6552_PDIV_SHIFT) & PLL6552_PDIV_MASK;
	}
	sdiv = (pll_con >> PLL6552_SDIV_SHIFT) & PLL6552_SDIV_MASK;

	fvco *= mdiv;
	FUNC0(fvco, (pdiv << sdiv));

	return (unsigned long)fvco;
}