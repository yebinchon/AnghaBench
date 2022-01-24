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
struct kobject {int dummy; } ;
struct freq_attr {int /*<<< orphan*/  (* store ) (struct cpufreq_policy*,char const*,size_t) ;} ;
struct cpufreq_policy {int /*<<< orphan*/  rwsem; int /*<<< orphan*/  cpu; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cpufreq_policy*,char const*,size_t) ; 
 struct freq_attr* FUNC5 (struct attribute*) ; 
 struct cpufreq_policy* FUNC6 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct kobject *kobj, struct attribute *attr,
		     const char *buf, size_t count)
{
	struct cpufreq_policy *policy = FUNC6(kobj);
	struct freq_attr *fattr = FUNC5(attr);
	ssize_t ret = -EINVAL;

	/*
	 * cpus_read_trylock() is used here to work around a circular lock
	 * dependency problem with respect to the cpufreq_register_driver().
	 */
	if (!FUNC1())
		return -EBUSY;

	if (FUNC0(policy->cpu)) {
		FUNC3(&policy->rwsem);
		ret = fattr->store(policy, buf, count);
		FUNC7(&policy->rwsem);
	}

	FUNC2();

	return ret;
}