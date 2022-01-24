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
struct TYPE_2__ {scalar_t__ set_latency_tolerance; } ;
struct device {int /*<<< orphan*/  kobj; TYPE_1__ power; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  pm_attr_group ; 
 int /*<<< orphan*/  pm_qos_latency_tolerance_attr_group ; 
 int /*<<< orphan*/  pm_runtime_attr_group ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  pm_wakeup_attr_group ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct device *dev)
{
	int rc;

	/* No need to create PM sysfs if explicitly disabled. */
	if (FUNC1(dev))
		return 0;

	rc = FUNC4(&dev->kobj, &pm_attr_group);
	if (rc)
		return rc;

	if (FUNC2(dev)) {
		rc = FUNC5(&dev->kobj, &pm_runtime_attr_group);
		if (rc)
			goto err_out;
	}
	if (FUNC0(dev)) {
		rc = FUNC5(&dev->kobj, &pm_wakeup_attr_group);
		if (rc)
			goto err_runtime;
	}
	if (dev->power.set_latency_tolerance) {
		rc = FUNC5(&dev->kobj,
				       &pm_qos_latency_tolerance_attr_group);
		if (rc)
			goto err_wakeup;
	}
	rc = FUNC3(dev);
	if (rc)
		goto err_latency;
	return 0;

 err_latency:
	FUNC7(&dev->kobj, &pm_qos_latency_tolerance_attr_group);
 err_wakeup:
	FUNC7(&dev->kobj, &pm_wakeup_attr_group);
 err_runtime:
	FUNC7(&dev->kobj, &pm_runtime_attr_group);
 err_out:
	FUNC6(&dev->kobj, &pm_attr_group);
	return rc;
}