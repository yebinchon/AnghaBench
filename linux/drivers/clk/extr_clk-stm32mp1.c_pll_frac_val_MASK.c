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
struct stm32_pll_obj {scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FRACLE ; 
 int FRAC_MASK ; 
 scalar_t__ FRAC_OFFSET ; 
 int FRAC_SHIFT ; 
 int FUNC0 (scalar_t__) ; 
 struct stm32_pll_obj* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u32 FUNC2(struct clk_hw *hw)
{
	struct stm32_pll_obj *clk_elem = FUNC1(hw);
	u32 reg, frac = 0;

	reg = FUNC0(clk_elem->reg + FRAC_OFFSET);
	if (reg & FRACLE)
		frac = (reg >> FRAC_SHIFT) & FRAC_MASK;

	return frac;
}