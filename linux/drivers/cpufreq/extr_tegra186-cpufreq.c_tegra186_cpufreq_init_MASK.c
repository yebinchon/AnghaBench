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
struct tegra186_cpufreq_data {unsigned int num_clusters; scalar_t__ regs; struct tegra186_cpufreq_cluster* clusters; } ;
struct tegra186_cpufreq_cluster_info {scalar_t__* cpus; scalar_t__ offset; } ;
struct tegra186_cpufreq_cluster {int /*<<< orphan*/  table; struct tegra186_cpufreq_cluster_info* info; } ;
struct TYPE_2__ {int transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; TYPE_1__ cpuinfo; int /*<<< orphan*/  freq_table; scalar_t__ driver_data; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct tegra186_cpufreq_data* FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	struct tegra186_cpufreq_data *data = FUNC2();
	unsigned int i;

	for (i = 0; i < data->num_clusters; i++) {
		struct tegra186_cpufreq_cluster *cluster = &data->clusters[i];
		const struct tegra186_cpufreq_cluster_info *info =
			cluster->info;
		int core;

		for (core = 0; core < FUNC0(info->cpus); core++) {
			if (info->cpus[core] == policy->cpu)
				break;
		}
		if (core == FUNC0(info->cpus))
			continue;

		policy->driver_data =
			data->regs + info->offset + FUNC1(core);
		policy->freq_table = cluster->table;
		break;
	}

	policy->cpuinfo.transition_latency = 300 * 1000;

	return 0;
}