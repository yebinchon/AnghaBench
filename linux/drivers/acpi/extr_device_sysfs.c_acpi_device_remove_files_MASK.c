#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ bus_address; } ;
struct TYPE_10__ {TYPE_4__ type; scalar_t__ unique_id; int /*<<< orphan*/  str_obj; } ;
struct TYPE_7__ {scalar_t__ power_resources; } ;
struct TYPE_8__ {TYPE_2__ flags; } ;
struct TYPE_6__ {scalar_t__ power_manageable; } ;
struct acpi_device {int /*<<< orphan*/  dev; scalar_t__ handle; TYPE_5__ pnp; TYPE_3__ power; TYPE_1__ flags; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct acpi_device *dev)
{
	FUNC1(&dev->data);

	if (dev->flags.power_manageable) {
		FUNC2(&dev->dev, &dev_attr_power_state);
		if (dev->power.flags.power_resources)
			FUNC2(&dev->dev,
					   &dev_attr_real_power_state);
	}

	/*
	 * If device has _STR, remove 'description' file
	 */
	if (FUNC0(dev->handle, "_STR")) {
		FUNC3(dev->pnp.str_obj);
		FUNC2(&dev->dev, &dev_attr_description);
	}
	/*
	 * If device has _EJ0, remove 'eject' file.
	 */
	if (FUNC0(dev->handle, "_EJ0"))
		FUNC2(&dev->dev, &dev_attr_eject);

	if (FUNC0(dev->handle, "_SUN"))
		FUNC2(&dev->dev, &dev_attr_sun);

	if (FUNC0(dev->handle, "_HRV"))
		FUNC2(&dev->dev, &dev_attr_hrv);

	if (dev->pnp.unique_id)
		FUNC2(&dev->dev, &dev_attr_uid);
	if (dev->pnp.type.bus_address)
		FUNC2(&dev->dev, &dev_attr_adr);
	FUNC2(&dev->dev, &dev_attr_modalias);
	FUNC2(&dev->dev, &dev_attr_hid);
	if (FUNC0(dev->handle, "_STA"))
		FUNC2(&dev->dev, &dev_attr_status);
	if (dev->handle)
		FUNC2(&dev->dev, &dev_attr_path);
}