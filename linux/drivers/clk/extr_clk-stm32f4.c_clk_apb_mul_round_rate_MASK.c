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
struct clk_hw {int dummy; } ;
struct clk_apb_mul {int /*<<< orphan*/  bit_idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_SET_RATE_PARENT ; 
 scalar_t__ STM32F4_RCC_CFGR ; 
 scalar_t__ base ; 
 int FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (scalar_t__) ; 
 struct clk_apb_mul* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC6(struct clk_hw *hw, unsigned long rate,
				   unsigned long *prate)
{
	struct clk_apb_mul *am = FUNC5(hw);
	unsigned long mult = 1;

	if (FUNC4(base + STM32F4_RCC_CFGR) & FUNC0(am->bit_idx))
		mult = 2;

	if (FUNC1(hw) & CLK_SET_RATE_PARENT) {
		unsigned long best_parent = rate / mult;

		*prate = FUNC3(FUNC2(hw), best_parent);
	}

	return *prate * mult;
}