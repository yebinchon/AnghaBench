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
typedef  int u32 ;
struct acpi_thermal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_class; } ;
struct acpi_device {int /*<<< orphan*/  dev; TYPE_1__ pnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_THERMAL_NOTIFY_DEVICES 130 
#define  ACPI_THERMAL_NOTIFY_TEMPERATURE 129 
#define  ACPI_THERMAL_NOTIFY_THRESHOLDS 128 
 int /*<<< orphan*/  ACPI_TRIPS_REFRESH_DEVICES ; 
 int /*<<< orphan*/  ACPI_TRIPS_REFRESH_THRESHOLDS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct acpi_thermal* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_thermal*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_thermal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct acpi_device *device, u32 event)
{
	struct acpi_thermal *tz = FUNC2(device);


	if (!tz)
		return;

	switch (event) {
	case ACPI_THERMAL_NOTIFY_TEMPERATURE:
		FUNC3(tz);
		break;
	case ACPI_THERMAL_NOTIFY_THRESHOLDS:
		FUNC4(tz, ACPI_TRIPS_REFRESH_THRESHOLDS);
		FUNC3(tz);
		FUNC1(device->pnp.device_class,
						  FUNC5(&device->dev), event, 0);
		break;
	case ACPI_THERMAL_NOTIFY_DEVICES:
		FUNC4(tz, ACPI_TRIPS_REFRESH_DEVICES);
		FUNC3(tz);
		FUNC1(device->pnp.device_class,
						  FUNC5(&device->dev), event, 0);
		break;
	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
		break;
	}
}