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
struct meson_clk_pll_data {scalar_t__ table; scalar_t__ range; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned long,unsigned long,unsigned int,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ; 
 int FUNC1 (unsigned int,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ; 

__attribute__((used)) static int FUNC2(unsigned long rate,
				       unsigned long parent_rate,
				       unsigned int index,
				       unsigned int *m,
				       unsigned int *n,
				       struct meson_clk_pll_data *pll)
{
	if (pll->range)
		return FUNC0(rate, parent_rate,
						     index, m, n, pll);
	else if (pll->table)
		return FUNC1(index, m, n, pll);

	return -EINVAL;
}