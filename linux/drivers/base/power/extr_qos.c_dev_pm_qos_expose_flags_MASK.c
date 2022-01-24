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
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {struct dev_pm_qos_request* flags_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_PM_QOS_FLAGS ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_pm_qos_request*) ; 
 int FUNC2 (struct device*,struct dev_pm_qos_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  dev_pm_qos_sysfs_mtx ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_pm_qos_request*) ; 
 struct dev_pm_qos_request* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 

int FUNC12(struct device *dev, s32 val)
{
	struct dev_pm_qos_request *req;
	int ret;

	if (!FUNC4(dev))
		return -EINVAL;

	req = FUNC6(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	ret = FUNC2(dev, req, DEV_PM_QOS_FLAGS, val);
	if (ret < 0) {
		FUNC5(req);
		return ret;
	}

	FUNC10(dev);
	FUNC7(&dev_pm_qos_sysfs_mtx);

	FUNC7(&dev_pm_qos_mtx);

	if (FUNC0(dev->power.qos))
		ret = -ENODEV;
	else if (dev->power.qos->flags_req)
		ret = -EEXIST;

	if (ret < 0) {
		FUNC1(req);
		FUNC5(req);
		FUNC8(&dev_pm_qos_mtx);
		goto out;
	}
	dev->power.qos->flags_req = req;

	FUNC8(&dev_pm_qos_mtx);

	ret = FUNC9(dev);
	if (ret)
		FUNC3(dev, DEV_PM_QOS_FLAGS);

 out:
	FUNC8(&dev_pm_qos_sysfs_mtx);
	FUNC11(dev);
	return ret;
}