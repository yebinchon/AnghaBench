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

/* Variables and functions */
 struct clk_hw* FUNC0 (struct clk_hw*) ; 
 unsigned long FUNC1 (struct clk_hw*) ; 
 long FUNC2 (struct clk_hw*,unsigned long,unsigned long*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
	unsigned long *parent_rate)
{
	/*
	 * SiRF SoC has not cpu clock control,
	 * So bypass to it's parent pll.
	 */
	struct clk_hw *parent_clk = FUNC0(hw);
	struct clk_hw *pll_parent_clk = FUNC0(parent_clk);
	unsigned long pll_parent_rate = FUNC1(pll_parent_clk);
	return FUNC2(parent_clk, rate, &pll_parent_rate);
}