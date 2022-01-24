#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; TYPE_4__* class; TYPE_1__* parent; } ;
struct TYPE_8__ {TYPE_3__* p; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_2__ subsys; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 TYPE_4__ block_class ; 
 char* FUNC0 (struct device*) ; 
 struct device_node* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ sysfs_deprecated ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct device_node *of_node = FUNC1(dev);
	int error;

	if (of_node) {
		error = FUNC5(&dev->kobj, FUNC4(of_node), "of_node");
		if (error)
			FUNC2(dev, "Error %d creating of_node link\n",error);
		/* An error here doesn't warrant bringing down the device */
	}

	if (!dev->class)
		return 0;

	error = FUNC5(&dev->kobj,
				  &dev->class->p->subsys.kobj,
				  "subsystem");
	if (error)
		goto out_devnode;

	if (dev->parent && FUNC3(dev)) {
		error = FUNC5(&dev->kobj, &dev->parent->kobj,
					  "device");
		if (error)
			goto out_subsys;
	}

#ifdef CONFIG_BLOCK
	/* /sys/block has directories and does not need symlinks */
	if (sysfs_deprecated && dev->class == &block_class)
		return 0;
#endif

	/* link in the class directory pointing to the device */
	error = FUNC5(&dev->class->p->subsys.kobj,
				  &dev->kobj, FUNC0(dev));
	if (error)
		goto out_device;

	return 0;

out_device:
	FUNC6(&dev->kobj, "device");

out_subsys:
	FUNC6(&dev->kobj, "subsystem");
out_devnode:
	FUNC6(&dev->kobj, "of_node");
	return error;
}