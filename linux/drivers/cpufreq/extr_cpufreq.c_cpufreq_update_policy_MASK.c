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
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {scalar_t__ get; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 TYPE_1__* cpufreq_driver ; 
 scalar_t__ cpufreq_suspended ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cpufreq_policy*) ; 

void FUNC6(unsigned int cpu)
{
	struct cpufreq_policy *policy = FUNC1(cpu);

	if (!policy)
		return;

	/*
	 * BIOS might change freq behind our back
	 * -> ask driver for current freq and notify governors about a change
	 */
	if (cpufreq_driver->get && FUNC4() &&
	    (cpufreq_suspended || FUNC0(!FUNC3(policy, false))))
		goto unlock;

	FUNC5(policy);

unlock:
	FUNC2(policy);
}