#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra20_cpufreq {int /*<<< orphan*/  cpu_clk; } ;
struct cpufreq_policy {int /*<<< orphan*/  suspend_freq; int /*<<< orphan*/  clk; } ;
struct TYPE_3__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,TYPE_1__*,int) ; 
 struct tegra20_cpufreq* FUNC2 () ; 
 TYPE_1__* freq_table ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	struct tegra20_cpufreq *cpufreq = FUNC2();

	FUNC0(cpufreq->cpu_clk);

	/* FIXME: what's the actual transition time? */
	FUNC1(policy, freq_table, 300 * 1000);
	policy->clk = cpufreq->cpu_clk;
	policy->suspend_freq = freq_table[0].frequency;
	return 0;
}