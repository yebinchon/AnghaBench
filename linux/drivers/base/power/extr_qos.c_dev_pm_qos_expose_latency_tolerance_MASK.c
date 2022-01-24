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
struct TYPE_2__ {int /*<<< orphan*/  set_latency_tolerance; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  dev_pm_qos_sysfs_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*) ; 

int FUNC3(struct device *dev)
{
	int ret;

	if (!dev->power.set_latency_tolerance)
		return -EINVAL;

	FUNC0(&dev_pm_qos_sysfs_mtx);
	ret = FUNC2(dev);
	FUNC1(&dev_pm_qos_sysfs_mtx);

	return ret;
}