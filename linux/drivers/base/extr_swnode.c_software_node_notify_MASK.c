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
struct swnode {int /*<<< orphan*/  kobj; } ;
struct fwnode_handle {struct fwnode_handle* secondary; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
#define  KOBJ_ADD 129 
#define  KOBJ_REMOVE 128 
 struct fwnode_handle* FUNC0 (struct device*) ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct swnode* FUNC7 (struct fwnode_handle*) ; 

int FUNC8(struct device *dev, unsigned long action)
{
	struct fwnode_handle *fwnode = FUNC0(dev);
	struct swnode *swnode;
	int ret;

	if (!fwnode)
		return 0;

	if (!FUNC2(fwnode))
		fwnode = fwnode->secondary;
	if (!FUNC2(fwnode))
		return 0;

	swnode = FUNC7(fwnode);

	switch (action) {
	case KOBJ_ADD:
		ret = FUNC5(&dev->kobj, &swnode->kobj,
					"software_node");
		if (ret)
			break;

		ret = FUNC5(&swnode->kobj, &dev->kobj,
					FUNC1(dev));
		if (ret) {
			FUNC6(&dev->kobj, "software_node");
			break;
		}
		FUNC3(&swnode->kobj);
		break;
	case KOBJ_REMOVE:
		FUNC6(&swnode->kobj, FUNC1(dev));
		FUNC6(&dev->kobj, "software_node");
		FUNC4(&swnode->kobj);
		break;
	default:
		break;
	}

	return 0;
}