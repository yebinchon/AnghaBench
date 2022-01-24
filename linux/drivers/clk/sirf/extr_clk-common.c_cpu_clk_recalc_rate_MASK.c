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

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
	unsigned long parent_rate)
{
	/*
	 * SiRF SoC has not cpu clock control,
	 * So return the parent pll rate.
	 */
	struct clk_hw *parent_clk = FUNC0(hw);
	return FUNC1(parent_clk);
}