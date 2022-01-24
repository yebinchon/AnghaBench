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
struct device {int dummy; } ;
struct acpi_device {TYPE_1__* handler; } ;
struct acpi_bus_type {int /*<<< orphan*/  (* cleanup ) (struct device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* unbind ) (struct device*) ;} ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 struct acpi_bus_type* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct acpi_device *adev = FUNC0(dev);
	struct acpi_bus_type *type;

	if (!adev)
		return 0;

	type = FUNC1(dev);
	if (type && type->cleanup)
		type->cleanup(dev);
	else if (adev->handler && adev->handler->unbind)
		adev->handler->unbind(dev);

	FUNC2(dev);
	return 0;
}