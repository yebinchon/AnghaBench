#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ valid; } ;
struct TYPE_26__ {int tsp; TYPE_7__ flags; } ;
struct TYPE_21__ {scalar_t__ valid; } ;
struct TYPE_22__ {TYPE_3__ flags; } ;
struct TYPE_19__ {scalar_t__ valid; } ;
struct TYPE_20__ {TYPE_1__ flags; } ;
struct TYPE_27__ {TYPE_8__ passive; TYPE_6__* active; TYPE_4__ hot; TYPE_2__ critical; } ;
struct acpi_thermal {int polling_frequency; int tz_enabled; TYPE_13__* thermal_zone; TYPE_11__* device; TYPE_9__ trips; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_23__ {scalar_t__ valid; } ;
struct TYPE_24__ {TYPE_5__ flags; } ;
struct TYPE_15__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_18__ {int /*<<< orphan*/  id; TYPE_10__ device; } ;
struct TYPE_17__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_16__ {TYPE_12__ dev; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_THERMAL_MAX_ACTIVE ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_13__*) ; 
 int /*<<< orphan*/  acpi_thermal_zone_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (char*,int,int /*<<< orphan*/ ,struct acpi_thermal*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6(struct acpi_thermal *tz)
{
	int trips = 0;
	int result;
	acpi_status status;
	int i;

	if (tz->trips.critical.flags.valid)
		trips++;

	if (tz->trips.hot.flags.valid)
		trips++;

	if (tz->trips.passive.flags.valid)
		trips++;

	for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE &&
			tz->trips.active[i].flags.valid; i++, trips++);

	if (tz->trips.passive.flags.valid)
		tz->thermal_zone =
			FUNC5("acpitz", trips, 0, tz,
						&acpi_thermal_zone_ops, NULL,
						     tz->trips.passive.tsp*100,
						     tz->polling_frequency*100);
	else
		tz->thermal_zone =
			FUNC5("acpitz", trips, 0, tz,
						&acpi_thermal_zone_ops, NULL,
						0, tz->polling_frequency*100);
	if (FUNC1(tz->thermal_zone))
		return -ENODEV;

	result = FUNC4(&tz->device->dev.kobj,
				   &tz->thermal_zone->device.kobj, "thermal_zone");
	if (result)
		return result;

	result = FUNC4(&tz->thermal_zone->device.kobj,
				   &tz->device->dev.kobj, "device");
	if (result)
		return result;

	status =  FUNC2(tz->device->handle,
					       tz->thermal_zone);
	if (FUNC0(status))
		return -ENODEV;

	tz->tz_enabled = 1;

	FUNC3(&tz->device->dev, "registered as thermal_zone%d\n",
		 tz->thermal_zone->id);
	return 0;
}