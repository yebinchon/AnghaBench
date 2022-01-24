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
struct cpufreq_policy {unsigned int* governor_data; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_RELATION_L ; 
 int EINVAL ; 
 int FUNC0 (struct cpufreq_policy*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_is_managed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  userspace_mutex ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy, unsigned int freq)
{
	int ret = -EINVAL;
	unsigned int *setspeed = policy->governor_data;

	FUNC4("cpufreq_set for cpu %u, freq %u kHz\n", policy->cpu, freq);

	FUNC1(&userspace_mutex);
	if (!FUNC3(cpu_is_managed, policy->cpu))
		goto err;

	*setspeed = freq;

	ret = FUNC0(policy, freq, CPUFREQ_RELATION_L);
 err:
	FUNC2(&userspace_mutex);
	return ret;
}