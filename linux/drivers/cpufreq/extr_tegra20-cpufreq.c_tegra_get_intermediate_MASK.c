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
struct tegra20_cpufreq {int /*<<< orphan*/  pll_p_clk; } ;
struct cpufreq_policy {unsigned int cur; } ;
struct TYPE_2__ {unsigned int frequency; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra20_cpufreq* FUNC1 () ; 
 TYPE_1__* freq_table ; 

__attribute__((used)) static unsigned int FUNC2(struct cpufreq_policy *policy,
					   unsigned int index)
{
	struct tegra20_cpufreq *cpufreq = FUNC1();
	unsigned int ifreq = FUNC0(cpufreq->pll_p_clk) / 1000;

	/*
	 * Don't switch to intermediate freq if:
	 * - we are already at it, i.e. policy->cur == ifreq
	 * - index corresponds to ifreq
	 */
	if (freq_table[index].frequency == ifreq || policy->cur == ifreq)
		return 0;

	return ifreq;
}