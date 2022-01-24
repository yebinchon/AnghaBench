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
struct wakeup_source {int /*<<< orphan*/  id; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/  groups; struct device* parent; int /*<<< orphan*/  class; int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct wakeup_source*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  device_create_release ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  wakeup_class ; 
 int /*<<< orphan*/  wakeup_source_groups ; 

__attribute__((used)) static struct device *FUNC9(struct device *parent,
						  struct wakeup_source *ws)
{
	struct device *dev = NULL;
	int retval = -ENODEV;

	dev = FUNC7(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		retval = -ENOMEM;
		goto error;
	}

	FUNC4(dev);
	dev->devt = FUNC1(0, 0);
	dev->class = wakeup_class;
	dev->parent = parent;
	dev->groups = wakeup_source_groups;
	dev->release = device_create_release;
	FUNC2(dev, ws);
	FUNC5(dev);

	retval = FUNC6(&dev->kobj, "wakeup%d", ws->id);
	if (retval)
		goto error;

	retval = FUNC3(dev);
	if (retval)
		goto error;

	return dev;

error:
	FUNC8(dev);
	return FUNC0(retval);
}