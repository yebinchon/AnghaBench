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
struct stm32_fractional_divider {int freg_bit; int /*<<< orphan*/  freg_status; } ;
struct stm32_pll_obj {struct stm32_fractional_divider div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct stm32_pll_obj* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct stm32_pll_obj *clk_elem = FUNC1(hw);
	struct stm32_fractional_divider *fd = &clk_elem->div;

	return (FUNC0(fd->freg_status) >> fd->freg_bit) & 0x01;
}