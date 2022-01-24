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
struct cpufreq_policy {scalar_t__ last_policy; scalar_t__ policy; struct cpufreq_governor* governor; int /*<<< orphan*/  cpu; int /*<<< orphan*/  last_governor; } ;
struct cpufreq_governor {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODATA ; 
 struct cpufreq_governor* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cpufreq_policy*) ; 
 int FUNC2 (struct cpufreq_policy*,struct cpufreq_policy*) ; 
 struct cpufreq_governor* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cpufreq_policy*,struct cpufreq_policy*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cpufreq_policy *policy)
{
	struct cpufreq_governor *gov = NULL, *def_gov = NULL;
	struct cpufreq_policy new_policy;

	FUNC5(&new_policy, policy, sizeof(*policy));

	def_gov = FUNC0();

	if (FUNC4()) {
		/*
		 * Update governor of new_policy to the governor used before
		 * hotplug
		 */
		gov = FUNC3(policy->last_governor);
		if (gov) {
			FUNC6("Restoring governor %s for cpu %d\n",
				policy->governor->name, policy->cpu);
		} else {
			if (!def_gov)
				return -ENODATA;
			gov = def_gov;
		}
		new_policy.governor = gov;
	} else {
		/* Use the default policy if there is no last_policy. */
		if (policy->last_policy) {
			new_policy.policy = policy->last_policy;
		} else {
			if (!def_gov)
				return -ENODATA;
			FUNC1(def_gov->name, &new_policy);
		}
	}

	return FUNC2(policy, &new_policy);
}