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
struct meson_clk_pll_data {TYPE_1__ frac; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long parent_rate,
					  unsigned int m, unsigned int n,
					  unsigned int frac,
					  struct meson_clk_pll_data *pll)
{
	u64 rate = (u64)parent_rate * m;

	if (frac && FUNC1(&pll->frac)) {
		u64 frac_rate = (u64)parent_rate * frac;

		rate += FUNC0(frac_rate,
					 (1 << pll->frac.width));
	}

	return FUNC0(rate, n);
}