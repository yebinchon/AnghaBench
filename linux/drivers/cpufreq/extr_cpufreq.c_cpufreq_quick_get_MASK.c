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
struct cpufreq_policy {unsigned int cur; } ;
struct TYPE_2__ {unsigned int (* get ) (unsigned int) ;scalar_t__ setpolicy; } ;

/* Variables and functions */
 struct cpufreq_policy* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_driver_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (unsigned int) ; 

unsigned int FUNC5(unsigned int cpu)
{
	struct cpufreq_policy *policy;
	unsigned int ret_freq = 0;
	unsigned long flags;

	FUNC2(&cpufreq_driver_lock, flags);

	if (cpufreq_driver && cpufreq_driver->setpolicy && cpufreq_driver->get) {
		ret_freq = cpufreq_driver->get(cpu);
		FUNC3(&cpufreq_driver_lock, flags);
		return ret_freq;
	}

	FUNC3(&cpufreq_driver_lock, flags);

	policy = FUNC0(cpu);
	if (policy) {
		ret_freq = policy->cur;
		FUNC1(policy);
	}

	return ret_freq;
}