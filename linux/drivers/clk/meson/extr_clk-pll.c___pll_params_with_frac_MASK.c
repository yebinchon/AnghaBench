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
typedef  unsigned int u64 ;
struct TYPE_2__ {int width; } ;
struct meson_clk_pll_data {int flags; TYPE_1__ frac; } ;

/* Variables and functions */
 int CLK_MESON_PLL_ROUND_CLOSEST ; 
 unsigned int FUNC0 (unsigned int,unsigned long) ; 
 unsigned int FUNC1 (unsigned int,unsigned long) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned long rate,
					   unsigned long parent_rate,
					   unsigned int m,
					   unsigned int n,
					   struct meson_clk_pll_data *pll)
{
	unsigned int frac_max = (1 << pll->frac.width);
	u64 val = (u64)rate * n;

	/* Bail out if we are already over the requested rate */
	if (rate < parent_rate * m / n)
		return 0;

	if (pll->flags & CLK_MESON_PLL_ROUND_CLOSEST)
		val = FUNC0(val * frac_max, parent_rate);
	else
		val = FUNC1(val * frac_max, parent_rate);

	val -= m * frac_max;

	return FUNC2((unsigned int)val, (frac_max - 1));
}