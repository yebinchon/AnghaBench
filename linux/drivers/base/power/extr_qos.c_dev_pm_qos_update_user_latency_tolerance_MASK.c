#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* qos; } ;
struct device {TYPE_1__ power; } ;
struct dev_pm_qos_request {int dummy; } ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {struct dev_pm_qos_request* latency_tolerance_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_PM_QOS_LATENCY_TOLERANCE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT ; 
 int FUNC1 (struct device*,struct dev_pm_qos_request*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dev_pm_qos_request*,scalar_t__) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  FUNC4 (struct dev_pm_qos_request*) ; 
 struct dev_pm_qos_request* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct device *dev, s32 val)
{
	int ret;

	FUNC6(&dev_pm_qos_mtx);

	if (FUNC0(dev->power.qos)
	    || !dev->power.qos->latency_tolerance_req) {
		struct dev_pm_qos_request *req;

		if (val < 0) {
			if (val == PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT)
				ret = 0;
			else
				ret = -EINVAL;
			goto out;
		}
		req = FUNC5(sizeof(*req), GFP_KERNEL);
		if (!req) {
			ret = -ENOMEM;
			goto out;
		}
		ret = FUNC1(dev, req, DEV_PM_QOS_LATENCY_TOLERANCE, val);
		if (ret < 0) {
			FUNC4(req);
			goto out;
		}
		dev->power.qos->latency_tolerance_req = req;
	} else {
		if (val < 0) {
			FUNC2(dev, DEV_PM_QOS_LATENCY_TOLERANCE);
			ret = 0;
		} else {
			ret = FUNC3(dev->power.qos->latency_tolerance_req, val);
		}
	}

 out:
	FUNC7(&dev_pm_qos_mtx);
	return ret;
}