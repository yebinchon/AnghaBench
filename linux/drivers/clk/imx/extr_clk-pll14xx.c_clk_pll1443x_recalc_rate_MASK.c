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
struct clk_pll14xx {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int KDIV_MASK ; 
 int MDIV_MASK ; 
 int MDIV_SHIFT ; 
 int PDIV_MASK ; 
 int PDIV_SHIFT ; 
 int SDIV_MASK ; 
 int SDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__) ; 
 struct clk_pll14xx* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						  unsigned long parent_rate)
{
	struct clk_pll14xx *pll = FUNC2(hw);
	u32 mdiv, pdiv, sdiv, pll_div_ctl0, pll_div_ctl1;
	short int kdiv;
	u64 fvco = parent_rate;

	pll_div_ctl0 = FUNC1(pll->base + 4);
	pll_div_ctl1 = FUNC1(pll->base + 8);
	mdiv = (pll_div_ctl0 & MDIV_MASK) >> MDIV_SHIFT;
	pdiv = (pll_div_ctl0 & PDIV_MASK) >> PDIV_SHIFT;
	sdiv = (pll_div_ctl0 & SDIV_MASK) >> SDIV_SHIFT;
	kdiv = pll_div_ctl1 & KDIV_MASK;

	/* fvco = (m * 65536 + k) * Fin / (p * 65536) */
	fvco *= (mdiv * 65536 + kdiv);
	pdiv *= 65536;

	FUNC0(fvco, pdiv << sdiv);

	return fvco;
}