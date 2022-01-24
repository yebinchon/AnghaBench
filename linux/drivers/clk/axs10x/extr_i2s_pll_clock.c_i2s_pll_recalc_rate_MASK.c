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
struct i2s_pll_clk {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_FBDIV_REG ; 
 int /*<<< orphan*/  PLL_IDIV_REG ; 
 int /*<<< orphan*/  PLL_ODIV0_REG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2s_pll_clk*,int /*<<< orphan*/ ) ; 
 struct i2s_pll_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
			unsigned long parent_rate)
{
	struct i2s_pll_clk *clk = FUNC2(hw);
	unsigned int idiv, fbdiv, odiv;

	idiv = FUNC0(FUNC1(clk, PLL_IDIV_REG));
	fbdiv = FUNC0(FUNC1(clk, PLL_FBDIV_REG));
	odiv = FUNC0(FUNC1(clk, PLL_ODIV0_REG));

	return ((parent_rate / idiv) * fbdiv) / odiv;
}