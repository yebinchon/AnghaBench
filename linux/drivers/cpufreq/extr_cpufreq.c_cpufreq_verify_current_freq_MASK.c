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
struct cpufreq_policy {unsigned int cur; int /*<<< orphan*/  update; scalar_t__ fast_switch_enabled; int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {unsigned int (* get ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct cpufreq_policy *policy, bool update)
{
	unsigned int new_freq;

	new_freq = cpufreq_driver->get(policy->cpu);
	if (!new_freq)
		return 0;

	/*
	 * If fast frequency switching is used with the given policy, the check
	 * against policy->cur is pointless, so skip it in that case.
	 */
	if (policy->fast_switch_enabled || !FUNC1())
		return new_freq;

	if (policy->cur != new_freq) {
		FUNC0(policy, new_freq);
		if (update)
			FUNC2(&policy->update);
	}

	return new_freq;
}