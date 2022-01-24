#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {int dummy; } ;
struct clk_alpha_pll {int num_vco; TYPE_1__* vco_table; } ;
struct TYPE_2__ {unsigned long min_freq; unsigned long max_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_REG_16BIT_WIDTH ; 
 scalar_t__ FUNC0 (struct clk_alpha_pll*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC2 (unsigned long,unsigned long,unsigned long) ; 
 struct clk_alpha_pll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw, unsigned long rate,
				     unsigned long *prate)
{
	struct clk_alpha_pll *pll = FUNC3(hw);
	unsigned long min_freq, max_freq;
	u32 l;
	u64 a;

	rate = FUNC1(rate, *prate,
				    &l, &a, ALPHA_REG_16BIT_WIDTH);
	if (!pll->vco_table || FUNC0(pll, rate))
		return rate;

	min_freq = pll->vco_table[0].min_freq;
	max_freq = pll->vco_table[pll->num_vco - 1].max_freq;

	return FUNC2(rate, min_freq, max_freq);
}