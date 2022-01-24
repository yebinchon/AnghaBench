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
 int PLL2650X_K_MASK ; 
 int PLL2650X_K_SHIFT ; 
 int PLL2650X_M_MASK ; 
 int PLL2650X_M_SHIFT ; 
 int PLL2650X_P_MASK ; 
 int PLL2650X_P_SHIFT ; 
 int PLL2650X_S_MASK ; 
 int PLL2650X_S_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__) ; 
 struct samsung_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
				unsigned long parent_rate)
{
	struct samsung_clk_pll *pll = FUNC2(hw);
	u64 fout = parent_rate;
	u32 mdiv, pdiv, sdiv, pll_con0, pll_con1;
	s16 kdiv;

	pll_con0 = FUNC1(pll->con_reg);
	mdiv = (pll_con0 >> PLL2650X_M_SHIFT) & PLL2650X_M_MASK;
	pdiv = (pll_con0 >> PLL2650X_P_SHIFT) & PLL2650X_P_MASK;
	sdiv = (pll_con0 >> PLL2650X_S_SHIFT) & PLL2650X_S_MASK;

	pll_con1 = FUNC1(pll->con_reg + 4);
	kdiv = (s16)((pll_con1 >> PLL2650X_K_SHIFT) & PLL2650X_K_MASK);

	fout *= (mdiv << 16) + kdiv;
	FUNC0(fout, (pdiv << sdiv));
	fout >>= 16;

	return (unsigned long)fout;
}