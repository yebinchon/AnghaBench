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
struct TYPE_2__ {int /*<<< orphan*/  lock; struct dev_pm_qos* qos; } ;
struct device {TYPE_1__ power; } ;
struct dev_pm_qos {int /*<<< orphan*/  resume_latency; } ;
typedef  scalar_t__ s32 ;
typedef  enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;

/* Variables and functions */
 int DEV_PM_QOS_RESUME_LATENCY ; 
 scalar_t__ FUNC0 (struct dev_pm_qos*) ; 
 scalar_t__ PM_QOS_RESUME_LATENCY_NO_CONSTRAINT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

s32 FUNC5(struct device *dev, enum dev_pm_qos_req_type type)
{
	struct dev_pm_qos *qos = dev->power.qos;
	unsigned long flags;
	s32 ret;

	FUNC3(&dev->power.lock, flags);

	if (type == DEV_PM_QOS_RESUME_LATENCY) {
		ret = FUNC0(qos) ? PM_QOS_RESUME_LATENCY_NO_CONSTRAINT
			: FUNC2(&qos->resume_latency);
	} else {
		FUNC1(1);
		ret = 0;
	}

	FUNC4(&dev->power.lock, flags);

	return ret;
}