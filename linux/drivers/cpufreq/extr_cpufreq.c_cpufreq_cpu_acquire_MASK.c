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
struct cpufreq_policy {int /*<<< orphan*/  rwsem; } ;

/* Variables and functions */
 struct cpufreq_policy* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cpufreq_policy*) ; 

struct cpufreq_policy *FUNC4(unsigned int cpu)
{
	struct cpufreq_policy *policy = FUNC0(cpu);

	if (!policy)
		return NULL;

	FUNC2(&policy->rwsem);

	if (FUNC3(policy)) {
		FUNC1(policy);
		return NULL;
	}

	return policy;
}