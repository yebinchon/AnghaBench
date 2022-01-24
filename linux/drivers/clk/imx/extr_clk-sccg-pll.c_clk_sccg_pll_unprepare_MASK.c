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
struct clk_sccg_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ PLL_CFG0 ; 
 int /*<<< orphan*/  PLL_PD_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct clk_sccg_pll* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct clk_sccg_pll *pll = FUNC1(hw);
	u32 val;

	val = FUNC0(pll->base + PLL_CFG0);
	val |= PLL_PD_MASK;
	FUNC2(val, pll->base + PLL_CFG0);
}