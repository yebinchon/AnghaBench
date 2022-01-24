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
struct mtk_cpu_dvfs_info {int /*<<< orphan*/  cpu_dev; } ;
struct cpufreq_policy {int /*<<< orphan*/  freq_table; struct mtk_cpu_dvfs_info* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct cpufreq_policy *policy)
{
	struct mtk_cpu_dvfs_info *info = policy->driver_data;

	FUNC0(info->cpu_dev, &policy->freq_table);

	return 0;
}