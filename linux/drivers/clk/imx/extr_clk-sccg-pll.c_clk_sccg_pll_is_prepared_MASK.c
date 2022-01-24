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
typedef  int u32 ;
struct clk_sccg_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ PLL_CFG0 ; 
 int PLL_PD_MASK ; 
 int FUNC0 (scalar_t__) ; 
 struct clk_sccg_pll* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct clk_sccg_pll *pll = FUNC1(hw);

	u32 val = FUNC0(pll->base + PLL_CFG0);

	return (val & PLL_PD_MASK) ? 0 : 1;
}