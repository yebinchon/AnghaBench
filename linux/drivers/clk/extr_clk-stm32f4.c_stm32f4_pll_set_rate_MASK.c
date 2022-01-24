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
struct stm32f4_pll {scalar_t__ offset; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;

/* Variables and functions */
 scalar_t__ base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_hw*) ; 
 struct clk_gate* FUNC4 (struct clk_hw*) ; 
 struct stm32f4_pll* FUNC5 (struct clk_gate*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_gate *gate = FUNC4(hw);
	struct stm32f4_pll *pll = FUNC5(gate);

	unsigned long n;
	unsigned long val;
	int pll_state;

	pll_state = FUNC3(hw);

	if (pll_state)
		FUNC1(hw);

	n = rate  / parent_rate;

	val = FUNC0(base + pll->offset) & ~(0x1ff << 6);

	FUNC6(val | ((n & 0x1ff) <<  6), base + pll->offset);

	if (pll_state)
		FUNC2(hw);

	return 0;
}