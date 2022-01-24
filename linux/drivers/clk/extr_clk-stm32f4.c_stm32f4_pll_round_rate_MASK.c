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
struct stm32f4_pll {unsigned long n_start; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;

/* Variables and functions */
 struct clk_gate* FUNC0 (struct clk_hw*) ; 
 struct stm32f4_pll* FUNC1 (struct clk_gate*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
		unsigned long *prate)
{
	struct clk_gate *gate = FUNC0(hw);
	struct stm32f4_pll *pll = FUNC1(gate);
	unsigned long n;

	n = rate / *prate;

	if (n < pll->n_start)
		n = pll->n_start;
	else if (n > 432)
		n = 432;

	return *prate * n;
}