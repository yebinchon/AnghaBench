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
typedef  unsigned long u64 ;
typedef  unsigned long u32 ;
struct clk_pll14xx {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long MDIV_MASK ; 
 unsigned long MDIV_SHIFT ; 
 unsigned long PDIV_MASK ; 
 unsigned long PDIV_SHIFT ; 
 unsigned long SDIV_MASK ; 
 unsigned long SDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct clk_pll14xx* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						  unsigned long parent_rate)
{
	struct clk_pll14xx *pll = FUNC2(hw);
	u32 mdiv, pdiv, sdiv, pll_div;
	u64 fvco = parent_rate;

	pll_div = FUNC1(pll->base + 4);
	mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
	pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
	sdiv = (pll_div & SDIV_MASK) >> SDIV_SHIFT;

	fvco *= mdiv;
	FUNC0(fvco, pdiv << sdiv);

	return fvco;
}