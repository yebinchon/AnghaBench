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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT ; 
 int /*<<< orphan*/  dev_pm_qos_sysfs_mtx ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void FUNC6(struct device *dev)
{
	FUNC1(&dev_pm_qos_sysfs_mtx);
	FUNC3(dev);
	FUNC2(&dev_pm_qos_sysfs_mtx);

	/* Remove the request from user space now */
	FUNC4(dev);
	FUNC0(dev,
		PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT);
	FUNC5(dev);
}