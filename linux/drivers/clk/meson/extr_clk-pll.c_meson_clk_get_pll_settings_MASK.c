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
struct meson_clk_pll_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long,unsigned int,unsigned int,int /*<<< orphan*/ ,struct meson_clk_pll_data*) ; 
 int FUNC1 (unsigned long,unsigned long,unsigned int,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long,unsigned long,struct meson_clk_pll_data*) ; 

__attribute__((used)) static int FUNC3(unsigned long rate,
				      unsigned long parent_rate,
				      unsigned int *best_m,
				      unsigned int *best_n,
				      struct meson_clk_pll_data *pll)
{
	unsigned long best = 0, now = 0;
	unsigned int i, m, n;
	int ret;

	for (i = 0, ret = 0; !ret; i++) {
		ret = FUNC1(rate, parent_rate,
						  i, &m, &n, pll);
		if (ret == -EINVAL)
			break;

		now = FUNC0(parent_rate, m, n, 0, pll);
		if (FUNC2(rate, best, now, pll)) {
			best = now;
			*best_m = m;
			*best_n = n;

			if (now == rate)
				break;
		}
	}

	return best ? 0 : -EINVAL;
}