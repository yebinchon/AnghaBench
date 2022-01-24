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
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct cpufreq_policy* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*,struct cpufreq_policy*,int) ; 

int FUNC3(struct cpufreq_policy *policy, unsigned int cpu)
{
	struct cpufreq_policy *cpu_policy;
	if (!policy)
		return -EINVAL;

	cpu_policy = FUNC0(cpu);
	if (!cpu_policy)
		return -EINVAL;

	FUNC2(policy, cpu_policy, sizeof(*policy));

	FUNC1(cpu_policy);
	return 0;
}