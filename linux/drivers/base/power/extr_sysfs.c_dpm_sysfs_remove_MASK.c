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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  pm_attr_group ; 
 int /*<<< orphan*/  pm_qos_latency_tolerance_attr_group ; 
 int /*<<< orphan*/  pm_wakeup_attr_group ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct device *dev)
{
	if (FUNC1(dev))
		return;
	FUNC4(&dev->kobj, &pm_qos_latency_tolerance_attr_group);
	FUNC0(dev);
	FUNC2(dev);
	FUNC4(&dev->kobj, &pm_wakeup_attr_group);
	FUNC3(&dev->kobj, &pm_attr_group);
}