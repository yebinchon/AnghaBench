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
struct fwnode_handle {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {struct fwnode_handle fwnode; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 struct fwnode_handle* FUNC1 (struct acpi_device*) ; 
 struct fwnode_handle* FUNC2 (struct fwnode_handle*,struct fwnode_handle*) ; 

struct fwnode_handle *FUNC3(struct device *dev,
						 struct fwnode_handle *child)
{
	struct acpi_device *adev = FUNC0(dev);
	struct fwnode_handle *fwnode = NULL;

	if (dev->of_node)
		fwnode = &dev->of_node->fwnode;
	else if (adev)
		fwnode = FUNC1(adev);

	return FUNC2(fwnode, child);
}