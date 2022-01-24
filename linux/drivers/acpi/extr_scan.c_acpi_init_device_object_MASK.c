#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int match_driver; int initialized; int /*<<< orphan*/  enumeration_by_parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  ids; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct acpi_device {int device_type; int dep_unmet; int /*<<< orphan*/  dev; TYPE_2__ flags; TYPE_3__ pnp; TYPE_1__ fwnode; int /*<<< orphan*/  parent; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_device_fwnode_ops ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_device*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct acpi_device *device, acpi_handle handle,
			     int type, unsigned long long sta)
{
	FUNC0(&device->pnp.ids);
	device->device_type = type;
	device->handle = handle;
	device->parent = FUNC2(handle);
	device->fwnode.ops = &acpi_device_fwnode_ops;
	FUNC8(device, sta);
	FUNC5(device);
	FUNC9(handle, &device->pnp, type);
	FUNC7(device);
	FUNC1(device);
	device->flags.match_driver = false;
	device->flags.initialized = true;
	device->flags.enumeration_by_parent =
		FUNC4(device);
	FUNC3(device);
	FUNC11(&device->dev);
	FUNC10(&device->dev, true);
	FUNC6(device);
	/* Assume there are unmet deps until acpi_device_dep_initialize() runs */
	device->dep_unmet = 1;
}