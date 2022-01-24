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
struct clk_mmc {scalar_t__ id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ HI3620_MMC_CIUCLK1 ; 
 int FUNC0 (struct clk_hw*,unsigned long) ; 
 struct clk_mmc* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct clk_mmc *mclk = FUNC1(hw);
	unsigned long rate;

	if (mclk->id == HI3620_MMC_CIUCLK1)
		rate = 13000000;
	else
		rate = 25000000;

	return FUNC0(hw, rate);
}