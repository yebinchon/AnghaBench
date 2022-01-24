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
struct cpufreq_policy {struct cpufreq_governor* governor; } ;
struct cpufreq_governor {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  cpufreq_governor_mutex ; 
 struct cpufreq_governor* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *str_governor,
				  struct cpufreq_policy *policy)
{
	struct cpufreq_governor *t;

	FUNC1(&cpufreq_governor_mutex);

	t = FUNC0(str_governor);
	if (!t) {
		int ret;

		FUNC2(&cpufreq_governor_mutex);

		ret = FUNC3("cpufreq_%s", str_governor);
		if (ret)
			return -EINVAL;

		FUNC1(&cpufreq_governor_mutex);

		t = FUNC0(str_governor);
	}
	if (t && !FUNC4(t->owner))
		t = NULL;

	FUNC2(&cpufreq_governor_mutex);

	if (t) {
		policy->governor = t;
		return 0;
	}

	return -EINVAL;
}