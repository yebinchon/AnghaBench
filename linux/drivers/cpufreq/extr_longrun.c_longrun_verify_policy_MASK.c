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
struct cpufreq_policy {scalar_t__ policy; scalar_t__ cpu; } ;

/* Variables and functions */
 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ; 
 scalar_t__ CPUFREQ_POLICY_POWERSAVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 

__attribute__((used)) static int FUNC1(struct cpufreq_policy *policy)
{
	if (!policy)
		return -EINVAL;

	policy->cpu = 0;
	FUNC0(policy);

	if ((policy->policy != CPUFREQ_POLICY_POWERSAVE) &&
	    (policy->policy != CPUFREQ_POLICY_PERFORMANCE))
		return -EINVAL;

	return 0;
}