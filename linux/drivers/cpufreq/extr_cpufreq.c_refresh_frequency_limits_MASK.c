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
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct cpufreq_policy *policy)
{
	struct cpufreq_policy new_policy;

	if (!FUNC1(policy)) {
		new_policy = *policy;
		FUNC2("updating policy for CPU %u\n", policy->cpu);

		FUNC0(policy, &new_policy);
	}
}