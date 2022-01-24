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
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {int /*<<< orphan*/  flags_req; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_pm_qos_mtx ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

int FUNC7(struct device *dev, s32 mask, bool set)
{
	s32 value;
	int ret;

	FUNC5(dev);
	FUNC3(&dev_pm_qos_mtx);

	if (FUNC0(dev->power.qos) || !dev->power.qos->flags_req) {
		ret = -EINVAL;
		goto out;
	}

	value = FUNC2(dev);
	if (set)
		value |= mask;
	else
		value &= ~mask;

	ret = FUNC1(dev->power.qos->flags_req, value);

 out:
	FUNC4(&dev_pm_qos_mtx);
	FUNC6(dev);
	return ret;
}