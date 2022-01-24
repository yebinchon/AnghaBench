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
struct cpufreq_governor {int /*<<< orphan*/  governor_list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  cpufreq_governor_list ; 
 int /*<<< orphan*/  cpufreq_governor_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct cpufreq_governor *governor)
{
	int err;

	if (!governor)
		return -EINVAL;

	if (FUNC0())
		return -ENODEV;

	FUNC3(&cpufreq_governor_mutex);

	err = -EBUSY;
	if (!FUNC1(governor->name)) {
		err = 0;
		FUNC2(&governor->governor_list, &cpufreq_governor_list);
	}

	FUNC4(&cpufreq_governor_mutex);
	return err;
}