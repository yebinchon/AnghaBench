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
struct davinci_pll_clk {int pllm_mask; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ PLLM ; 
 int FUNC0 (scalar_t__) ; 
 struct davinci_pll_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
					   unsigned long parent_rate)
{
	struct davinci_pll_clk *pll = FUNC1(hw);
	unsigned long rate = parent_rate;
	u32 mult;

	mult = FUNC0(pll->base + PLLM) & pll->pllm_mask;
	rate *= mult * 2;

	return rate;
}