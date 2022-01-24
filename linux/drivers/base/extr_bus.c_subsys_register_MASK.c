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
struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject* parent; } ;
struct device {int /*<<< orphan*/  release; struct attribute_group const** groups; TYPE_1__ kobj; } ;
struct bus_type {struct device* dev_root; int /*<<< orphan*/  name; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bus_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct bus_type*) ; 
 int FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  system_root_device_release ; 

__attribute__((used)) static int FUNC7(struct bus_type *subsys,
			   const struct attribute_group **groups,
			   struct kobject *parent_of_root)
{
	struct device *dev;
	int err;

	err = FUNC0(subsys);
	if (err < 0)
		return err;

	dev = FUNC5(sizeof(struct device), GFP_KERNEL);
	if (!dev) {
		err = -ENOMEM;
		goto err_dev;
	}

	err = FUNC2(dev, "%s", subsys->name);
	if (err < 0)
		goto err_name;

	dev->kobj.parent = parent_of_root;
	dev->groups = groups;
	dev->release = system_root_device_release;

	err = FUNC3(dev);
	if (err < 0)
		goto err_dev_reg;

	subsys->dev_root = dev;
	return 0;

err_dev_reg:
	FUNC6(dev);
	dev = NULL;
err_name:
	FUNC4(dev);
err_dev:
	FUNC1(subsys);
	return err;
}