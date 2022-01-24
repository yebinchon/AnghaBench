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
struct stm32_pll_obj {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct stm32_pll_obj* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct stm32_pll_obj *clk_elem = FUNC3(hw);
	u32 reg;
	unsigned long flags = 0;

	FUNC1(clk_elem->lock, flags);

	reg = FUNC0(clk_elem->reg);
	reg &= ~PLL_ON;
	FUNC4(reg, clk_elem->reg);

	FUNC2(clk_elem->lock, flags);
}