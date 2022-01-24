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
struct pmf_handlers {int dummy; } ;
struct pmf_device {int /*<<< orphan*/  link; int /*<<< orphan*/  functions; struct pmf_handlers* handlers; int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmf_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pmf_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (struct pmf_device*,void*) ; 
 int /*<<< orphan*/  pmf_devices ; 
 struct pmf_device* FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  pmf_lock ; 
 int /*<<< orphan*/  FUNC10 (struct pmf_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC13(struct device_node *np,
			struct pmf_handlers *handlers,
			void *driverdata)
{
	struct pmf_device *dev;
	unsigned long flags;
	int rc = 0;

	if (handlers == NULL)
		return -EINVAL;

	FUNC0("pmf: registering driver for node %pOF\n", np);

	FUNC11(&pmf_lock, flags);
	dev = FUNC9(np);
	FUNC12(&pmf_lock, flags);
	if (dev != NULL) {
		FUNC0("pmf: already there !\n");
		FUNC10(dev);
		return -EBUSY;
	}

	dev = FUNC4(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC0("pmf: no memory !\n");
		return -ENOMEM;
	}
	FUNC3(&dev->ref);
	dev->node = FUNC6(np);
	dev->handlers = handlers;
	FUNC1(&dev->functions);

	rc = FUNC8(dev, driverdata);
	if (rc == 0) {
		FUNC0("pmf: no functions, disposing.. \n");
		FUNC7(np);
		FUNC2(dev);
		return -ENODEV;
	}

	FUNC11(&pmf_lock, flags);
	FUNC5(&dev->link, &pmf_devices);
	FUNC12(&pmf_lock, flags);

	return 0;
}