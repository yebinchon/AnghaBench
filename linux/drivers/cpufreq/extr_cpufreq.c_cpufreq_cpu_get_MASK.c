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
struct cpufreq_policy {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 scalar_t__ cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_driver_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

struct cpufreq_policy *FUNC5(unsigned int cpu)
{
	struct cpufreq_policy *policy = NULL;
	unsigned long flags;

	if (FUNC0(cpu >= nr_cpu_ids))
		return NULL;

	/* get the cpufreq driver */
	FUNC3(&cpufreq_driver_lock, flags);

	if (cpufreq_driver) {
		/* get the CPU */
		policy = FUNC1(cpu);
		if (policy)
			FUNC2(&policy->kobj);
	}

	FUNC4(&cpufreq_driver_lock, flags);

	return policy;
}