#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct xenbus_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_mode ; 
 int /*<<< orphan*/  dev_attr_physical_device ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_vbdstat_group ; 

__attribute__((used)) static int FUNC4(struct xenbus_device *dev)
{
	int error;

	error = FUNC0(&dev->dev, &dev_attr_physical_device);
	if (error)
		goto fail1;

	error = FUNC0(&dev->dev, &dev_attr_mode);
	if (error)
		goto fail2;

	error = FUNC2(&dev->dev.kobj, &xen_vbdstat_group);
	if (error)
		goto fail3;

	return 0;

fail3:	FUNC3(&dev->dev.kobj, &xen_vbdstat_group);
fail2:	FUNC1(&dev->dev, &dev_attr_mode);
fail1:	FUNC1(&dev->dev, &dev_attr_physical_device);
	return error;
}