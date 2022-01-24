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
struct cpufreq_policy {int /*<<< orphan*/  rwsem; } ;
struct TYPE_2__ {scalar_t__ get; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpufreq_policy*) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

unsigned int FUNC5(unsigned int cpu)
{
	struct cpufreq_policy *policy = FUNC1(cpu);
	unsigned int ret_freq = 0;

	if (policy) {
		FUNC3(&policy->rwsem);
		if (cpufreq_driver->get)
			ret_freq = FUNC0(policy);
		FUNC4(&policy->rwsem);

		FUNC2(policy);
	}

	return ret_freq;
}