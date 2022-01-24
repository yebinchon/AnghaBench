#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct TYPE_5__ {TYPE_3__* qos; } ;
struct device {TYPE_2__ power; } ;
typedef  enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;
struct TYPE_4__ {int /*<<< orphan*/  notifiers; } ;
struct TYPE_6__ {TYPE_1__ resume_latency; } ;

/* Variables and functions */
#define  DEV_PM_QOS_RESUME_LATENCY 128 
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct notifier_block*) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct device *dev,
			       struct notifier_block *notifier,
			       enum dev_pm_qos_req_type type)
{
	int ret = 0;

	FUNC3(&dev_pm_qos_mtx);

	/* Silently return if the constraints object is not present. */
	if (FUNC0(dev->power.qos))
		goto unlock;

	switch (type) {
	case DEV_PM_QOS_RESUME_LATENCY:
		ret = FUNC2(dev->power.qos->resume_latency.notifiers,
							 notifier);
		break;
	default:
		FUNC1(1);
		ret = -EINVAL;
	}

unlock:
	FUNC4(&dev_pm_qos_mtx);
	return ret;
}