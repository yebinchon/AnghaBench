#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int attr_rdpmc; scalar_t__ attr_rdpmc_broken; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOTSUPP ; 
 size_t FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rdpmc_always_available_key ; 
 int /*<<< orphan*/  refresh_pce ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static ssize_t FUNC4(struct device *cdev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	unsigned long val;
	ssize_t ret;

	ret = FUNC0(buf, 0, &val);
	if (ret)
		return ret;

	if (val > 2)
		return -EINVAL;

	if (x86_pmu.attr_rdpmc_broken)
		return -ENOTSUPP;

	if ((val == 2) != (x86_pmu.attr_rdpmc == 2)) {
		/*
		 * Changing into or out of always available, aka
		 * perf-event-bypassing mode.  This path is extremely slow,
		 * but only root can trigger it, so it's okay.
		 */
		if (val == 2)
			FUNC3(&rdpmc_always_available_key);
		else
			FUNC2(&rdpmc_always_available_key);
		FUNC1(refresh_pce, NULL, 1);
	}

	x86_pmu.attr_rdpmc = val;

	return count;
}