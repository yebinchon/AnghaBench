#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_10__ {scalar_t__ power_resources; } ;
struct TYPE_11__ {TYPE_4__ flags; } ;
struct TYPE_9__ {scalar_t__ power_manageable; } ;
struct TYPE_7__ {scalar_t__ bus_address; } ;
struct TYPE_8__ {scalar_t__ unique_id; TYPE_1__ type; int /*<<< orphan*/ * str_obj; int /*<<< orphan*/  ids; } ;
struct acpi_device {int /*<<< orphan*/  data; TYPE_6__ dev; TYPE_5__ power; TYPE_3__ flags; scalar_t__ handle; TYPE_2__ pnp; } ;
struct acpi_buffer {int /*<<< orphan*/ * pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  dev_attr_adr ; 
 int /*<<< orphan*/  dev_attr_description ; 
 int /*<<< orphan*/  dev_attr_eject ; 
 int /*<<< orphan*/  dev_attr_hid ; 
 int /*<<< orphan*/  dev_attr_hrv ; 
 int /*<<< orphan*/  dev_attr_modalias ; 
 int /*<<< orphan*/  dev_attr_path ; 
 int /*<<< orphan*/  dev_attr_power_state ; 
 int /*<<< orphan*/  dev_attr_real_power_state ; 
 int /*<<< orphan*/  dev_attr_status ; 
 int /*<<< orphan*/  dev_attr_sun ; 
 int /*<<< orphan*/  dev_attr_uid ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct acpi_device *dev)
{
	struct acpi_buffer buffer = {&ACPI_ALLOCATE_BUFFER, NULL};
	acpi_status status;
	int result = 0;

	/*
	 * Devices gotten from FADT don't have a "path" attribute
	 */
	if (dev->handle) {
		result = FUNC4(&dev->dev, &dev_attr_path);
		if (result)
			goto end;
	}

	if (!FUNC5(&dev->pnp.ids)) {
		result = FUNC4(&dev->dev, &dev_attr_hid);
		if (result)
			goto end;

		result = FUNC4(&dev->dev, &dev_attr_modalias);
		if (result)
			goto end;
	}

	/*
	 * If device has _STR, 'description' file is created
	 */
	if (FUNC3(dev->handle, "_STR")) {
		status = FUNC1(dev->handle, "_STR",
					NULL, &buffer);
		if (FUNC0(status))
			buffer.pointer = NULL;
		dev->pnp.str_obj = buffer.pointer;
		result = FUNC4(&dev->dev, &dev_attr_description);
		if (result)
			goto end;
	}

	if (dev->pnp.type.bus_address)
		result = FUNC4(&dev->dev, &dev_attr_adr);
	if (dev->pnp.unique_id)
		result = FUNC4(&dev->dev, &dev_attr_uid);

	if (FUNC3(dev->handle, "_SUN")) {
		result = FUNC4(&dev->dev, &dev_attr_sun);
		if (result)
			goto end;
	}

	if (FUNC3(dev->handle, "_HRV")) {
		result = FUNC4(&dev->dev, &dev_attr_hrv);
		if (result)
			goto end;
	}

	if (FUNC3(dev->handle, "_STA")) {
		result = FUNC4(&dev->dev, &dev_attr_status);
		if (result)
			goto end;
	}

	/*
	 * If device has _EJ0, 'eject' file is created that is used to trigger
	 * hot-removal function from userland.
	 */
	if (FUNC3(dev->handle, "_EJ0")) {
		result = FUNC4(&dev->dev, &dev_attr_eject);
		if (result)
			return result;
	}

	if (dev->flags.power_manageable) {
		result = FUNC4(&dev->dev, &dev_attr_power_state);
		if (result)
			return result;

		if (dev->power.flags.power_resources)
			result = FUNC4(&dev->dev,
						    &dev_attr_real_power_state);
	}

	FUNC2(&dev->dev.kobj, &dev->data);

end:
	return result;
}