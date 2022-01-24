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
 int PLLS3C2410_MDIV_MASK ; 
 int PLLS3C2410_MDIV_SHIFT ; 
 int PLLS3C2410_PDIV_MASK ; 
 int PLLS3C2410_PDIV_SHIFT ; 
 int PLLS3C2410_SDIV_MASK ; 
 int PLLS3C2410_SDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct samsung_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					unsigned long parent_rate)
{
	struct samsung_clk_pll *pll = FUNC2(hw);
	u32 pll_con, mdiv, pdiv, sdiv;
	u64 fvco = parent_rate;

	pll_con = FUNC1(pll->con_reg);
	mdiv = (pll_con >> PLLS3C2410_MDIV_SHIFT) & PLLS3C2410_MDIV_MASK;
	pdiv = (pll_con >> PLLS3C2410_PDIV_SHIFT) & PLLS3C2410_PDIV_MASK;
	sdiv = (pll_con >> PLLS3C2410_SDIV_SHIFT) & PLLS3C2410_SDIV_MASK;

	fvco *= (mdiv + 8);
	FUNC0(fvco, (pdiv + 2) << sdiv);

	return (unsigned int)fvco;
}