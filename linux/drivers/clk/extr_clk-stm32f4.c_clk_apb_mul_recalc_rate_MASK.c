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
 scalar_t__ STM32F4_RCC_CFGR ; 
 scalar_t__ base ; 
 int FUNC1 (scalar_t__) ; 
 struct clk_apb_mul* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					     unsigned long parent_rate)
{
	struct clk_apb_mul *am = FUNC2(hw);

	if (FUNC1(base + STM32F4_RCC_CFGR) & FUNC0(am->bit_idx))
		return parent_rate * 2;

	return parent_rate;
}