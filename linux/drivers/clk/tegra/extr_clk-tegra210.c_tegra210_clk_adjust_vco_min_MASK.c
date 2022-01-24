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
struct tegra_clk_pll_params {unsigned long vco_min; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_SDM_COEFF ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC2(struct tegra_clk_pll_params *params,
			    unsigned long parent_rate)
{
	unsigned long vco_min = params->vco_min;

	params->vco_min += FUNC0(parent_rate, PLL_SDM_COEFF);
	vco_min = FUNC1(vco_min, params->vco_min);

	return vco_min;
}