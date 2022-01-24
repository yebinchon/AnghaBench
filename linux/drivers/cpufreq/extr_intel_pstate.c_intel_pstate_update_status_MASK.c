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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  intel_cpufreq ; 
 int /*<<< orphan*/  intel_pstate ; 
 int /*<<< orphan*/ * intel_pstate_driver ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,size_t) ; 

__attribute__((used)) static int FUNC3(const char *buf, size_t size)
{
	int ret;

	if (size == 3 && !FUNC2(buf, "off", size))
		return intel_pstate_driver ?
			FUNC1() : -EINVAL;

	if (size == 6 && !FUNC2(buf, "active", size)) {
		if (intel_pstate_driver) {
			if (intel_pstate_driver == &intel_pstate)
				return 0;

			ret = FUNC1();
			if (ret)
				return ret;
		}

		return FUNC0(&intel_pstate);
	}

	if (size == 7 && !FUNC2(buf, "passive", size)) {
		if (intel_pstate_driver) {
			if (intel_pstate_driver == &intel_cpufreq)
				return 0;

			ret = FUNC1();
			if (ret)
				return ret;
		}

		return FUNC0(&intel_cpufreq);
	}

	return -EINVAL;
}