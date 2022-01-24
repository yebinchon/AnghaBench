#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {TYPE_1__* governor; } ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ setpolicy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_2__* cpufreq_driver ; 
 scalar_t__ FUNC0 (char*,struct cpufreq_policy*) ; 
 scalar_t__ FUNC1 (char*,struct cpufreq_policy*) ; 
 int FUNC2 (struct cpufreq_policy*,struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*,struct cpufreq_policy*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct cpufreq_policy *policy,
					const char *buf, size_t count)
{
	int ret;
	char	str_governor[16];
	struct cpufreq_policy new_policy;

	FUNC3(&new_policy, policy, sizeof(*policy));

	ret = FUNC5(buf, "%15s", str_governor);
	if (ret != 1)
		return -EINVAL;

	if (cpufreq_driver->setpolicy) {
		if (FUNC1(str_governor, &new_policy))
			return -EINVAL;
	} else {
		if (FUNC0(str_governor, &new_policy))
			return -EINVAL;
	}

	ret = FUNC2(policy, &new_policy);

	if (new_policy.governor)
		FUNC4(new_policy.governor->owner);

	return ret ? ret : count;
}