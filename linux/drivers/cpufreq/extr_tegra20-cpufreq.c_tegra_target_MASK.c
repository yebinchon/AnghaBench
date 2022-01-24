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
struct tegra20_cpufreq {int pll_x_prepared; int /*<<< orphan*/  pll_x_clk; int /*<<< orphan*/  cpu_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  pll_p_clk; } ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {unsigned long frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct tegra20_cpufreq* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 TYPE_1__* freq_table ; 

__attribute__((used)) static int FUNC7(struct cpufreq_policy *policy, unsigned int index)
{
	struct tegra20_cpufreq *cpufreq = FUNC5();
	unsigned long rate = freq_table[index].frequency;
	unsigned int ifreq = FUNC2(cpufreq->pll_p_clk) / 1000;
	int ret;

	/*
	 * target freq == pll_p, don't need to take extra reference to pll_x_clk
	 * as it isn't used anymore.
	 */
	if (rate == ifreq)
		return FUNC3(cpufreq->cpu_clk, cpufreq->pll_p_clk);

	ret = FUNC4(cpufreq->pll_x_clk, rate * 1000);
	/* Restore to earlier frequency on error, i.e. pll_x */
	if (ret)
		FUNC6(cpufreq->dev, "Failed to change pll_x to %lu\n", rate);

	ret = FUNC3(cpufreq->cpu_clk, cpufreq->pll_x_clk);
	/* This shouldn't fail while changing or restoring */
	FUNC0(ret);

	/*
	 * Drop count to pll_x clock only if we switched to intermediate freq
	 * earlier while transitioning to a target frequency.
	 */
	if (cpufreq->pll_x_prepared) {
		FUNC1(cpufreq->pll_x_clk);
		cpufreq->pll_x_prepared = false;
	}

	return ret;
}