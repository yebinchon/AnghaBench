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
struct pic32_sys_pll {unsigned long idiv; int /*<<< orphan*/  ctrl_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLL_MULT_MASK ; 
 int PLL_MULT_SHIFT ; 
 int PLL_ODIV_MASK ; 
 int PLL_ODIV_SHIFT ; 
 struct pic32_sys_pll* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	struct pic32_sys_pll *pll = FUNC0(hw);
	unsigned long pll_in_rate;
	u32 mult, odiv, div, v;
	u64 rate64;

	v = FUNC2(pll->ctrl_reg);
	odiv = ((v >> PLL_ODIV_SHIFT) & PLL_ODIV_MASK);
	mult = ((v >> PLL_MULT_SHIFT) & PLL_MULT_MASK) + 1;
	div = FUNC3(odiv);

	/* pll_in_rate = parent_rate / idiv
	 * pll_out_rate = pll_in_rate * mult / div;
	 */
	pll_in_rate = parent_rate / pll->idiv;
	rate64 = pll_in_rate;
	rate64 *= mult;
	FUNC1(rate64, div);

	return rate64;
}