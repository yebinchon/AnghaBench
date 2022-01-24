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
struct cpufreq_policy {int /*<<< orphan*/  policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE ; 
 int /*<<< orphan*/  CPUFREQ_POLICY_PERFORMANCE ; 
 int /*<<< orphan*/  CPUFREQ_POLICY_POWERSAVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpufreq_policy*) ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy)
{
	int ret = FUNC1(policy);

	if (ret)
		return ret;

	if (FUNC0(CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE))
		policy->policy = CPUFREQ_POLICY_PERFORMANCE;
	else
		policy->policy = CPUFREQ_POLICY_POWERSAVE;

	return 0;
}