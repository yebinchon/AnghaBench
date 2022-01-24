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
typedef  int /*<<< orphan*/  va_list ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; struct attribute_group const** groups; struct device* parent; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  device_create_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static struct device *
FUNC8(struct device *parent, void *drvdata,
		    const struct attribute_group **groups,
		    const char *fmt, va_list args)
{
	struct device *dev = NULL;
	int retval = -ENODEV;

	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		retval = -ENOMEM;
		goto error;
	}

	FUNC3(dev);
	dev->parent = parent;
	dev->groups = groups;
	dev->release = device_create_release;
	FUNC4(dev);
	FUNC1(dev, drvdata);

	retval = FUNC5(&dev->kobj, fmt, args);
	if (retval)
		goto error;

	retval = FUNC2(dev);
	if (retval)
		goto error;

	return dev;

error:
	FUNC7(dev);
	return FUNC0(retval);
}