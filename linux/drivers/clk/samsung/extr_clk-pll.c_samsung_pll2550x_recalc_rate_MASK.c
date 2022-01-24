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
struct samsung_clk_pll {int /*<<< orphan*/  con_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLL2550X_M_MASK ; 
 int PLL2550X_M_SHIFT ; 
 int PLL2550X_P_MASK ; 
 int PLL2550X_P_SHIFT ; 
 int PLL2550X_R_MASK ; 
 int PLL2550X_R_SHIFT ; 
 int PLL2550X_S_MASK ; 
 int PLL2550X_S_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct samsung_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
				unsigned long parent_rate)
{
	struct samsung_clk_pll *pll = FUNC2(hw);
	u32 r, p, m, s, pll_stat;
	u64 fvco = parent_rate;

	pll_stat = FUNC1(pll->con_reg);
	r = (pll_stat >> PLL2550X_R_SHIFT) & PLL2550X_R_MASK;
	if (!r)
		return 0;
	p = (pll_stat >> PLL2550X_P_SHIFT) & PLL2550X_P_MASK;
	m = (pll_stat >> PLL2550X_M_SHIFT) & PLL2550X_M_MASK;
	s = (pll_stat >> PLL2550X_S_SHIFT) & PLL2550X_S_MASK;

	fvco *= m;
	FUNC0(fvco, (p << s));

	return (unsigned long)fvco;
}