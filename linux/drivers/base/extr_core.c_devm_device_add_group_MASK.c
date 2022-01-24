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
union device_attr_group_devres {struct attribute_group const* group; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_attr_group_remove ; 
 int /*<<< orphan*/  FUNC0 (struct device*,union device_attr_group_devres*) ; 
 union device_attr_group_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union device_attr_group_devres*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct attribute_group const*) ; 

int FUNC4(struct device *dev, const struct attribute_group *grp)
{
	union device_attr_group_devres *devres;
	int error;

	devres = FUNC1(devm_attr_group_remove,
			      sizeof(*devres), GFP_KERNEL);
	if (!devres)
		return -ENOMEM;

	error = FUNC3(&dev->kobj, grp);
	if (error) {
		FUNC2(devres);
		return error;
	}

	devres->group = grp;
	FUNC0(dev, devres);
	return 0;
}