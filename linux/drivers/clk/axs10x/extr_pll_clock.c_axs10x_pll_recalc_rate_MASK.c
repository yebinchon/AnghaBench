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
struct clk_hw {int dummy; } ;
struct axs10x_pll_clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_REG_FBDIV ; 
 int /*<<< orphan*/  PLL_REG_IDIV ; 
 int /*<<< orphan*/  PLL_REG_ODIV ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axs10x_pll_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 struct axs10x_pll_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					    unsigned long parent_rate)
{
	u64 rate;
	u32 idiv, fbdiv, odiv;
	struct axs10x_pll_clk *clk = FUNC3(hw);

	idiv = FUNC0(FUNC1(clk, PLL_REG_IDIV));
	fbdiv = FUNC0(FUNC1(clk, PLL_REG_FBDIV));
	odiv = FUNC0(FUNC1(clk, PLL_REG_ODIV));

	rate = (u64)parent_rate * fbdiv;
	FUNC2(rate, idiv * odiv);

	return rate;
}