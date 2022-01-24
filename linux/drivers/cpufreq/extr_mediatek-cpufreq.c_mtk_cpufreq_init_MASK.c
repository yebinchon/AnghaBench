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
struct mtk_cpu_dvfs_info {int /*<<< orphan*/  cpu_clk; int /*<<< orphan*/  cpus; int /*<<< orphan*/  cpu_dev; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpus; int /*<<< orphan*/  clk; struct mtk_cpu_dvfs_info* driver_data; struct cpufreq_frequency_table* freq_table; int /*<<< orphan*/  cpu; } ;
struct cpufreq_frequency_table {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cpufreq_frequency_table**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mtk_cpu_dvfs_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy)
{
	struct mtk_cpu_dvfs_info *info;
	struct cpufreq_frequency_table *freq_table;
	int ret;

	info = FUNC3(policy->cpu);
	if (!info) {
		FUNC4("dvfs info for cpu%d is not initialized.\n",
		       policy->cpu);
		return -EINVAL;
	}

	ret = FUNC1(info->cpu_dev, &freq_table);
	if (ret) {
		FUNC4("failed to init cpufreq table for cpu%d: %d\n",
		       policy->cpu, ret);
		return ret;
	}

	FUNC0(policy->cpus, &info->cpus);
	policy->freq_table = freq_table;
	policy->driver_data = info;
	policy->clk = info->cpu_clk;

	FUNC2(policy->cpus);

	return 0;
}