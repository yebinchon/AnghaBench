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
typedef  int /*<<< orphan*/  u32 ;
struct pistachio_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_CTRL1 ; 
 int /*<<< orphan*/  PLL_INT_CTRL1_PD ; 
 int /*<<< orphan*/  FUNC0 (struct pistachio_clk_pll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pistachio_clk_pll*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pistachio_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct pistachio_clk_pll *pll = FUNC2(hw);
	u32 val;

	val = FUNC0(pll, PLL_CTRL1);
	val |= PLL_INT_CTRL1_PD;
	FUNC1(pll, val, PLL_CTRL1);
}