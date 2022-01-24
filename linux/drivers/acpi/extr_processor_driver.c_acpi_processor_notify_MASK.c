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
struct acpi_processor {int performance_platform_limit; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_class; } ;
struct acpi_device {scalar_t__ handle; int /*<<< orphan*/  dev; TYPE_1__ pnp; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_PROCESSOR_NOTIFY_PERFORMANCE 130 
#define  ACPI_PROCESSOR_NOTIFY_POWER 129 
#define  ACPI_PROCESSOR_NOTIFY_THROTTLING 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct acpi_processor* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_processor*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(acpi_handle handle, u32 event, void *data)
{
	struct acpi_device *device = data;
	struct acpi_processor *pr;
	int saved;

	if (device->handle != handle)
		return;

	pr = FUNC2(device);
	if (!pr)
		return;

	switch (event) {
	case ACPI_PROCESSOR_NOTIFY_PERFORMANCE:
		saved = pr->performance_platform_limit;
		FUNC4(pr, 1);
		if (saved == pr->performance_platform_limit)
			break;
		FUNC1(device->pnp.device_class,
						  FUNC6(&device->dev), event,
						  pr->performance_platform_limit);
		break;
	case ACPI_PROCESSOR_NOTIFY_POWER:
		FUNC3(pr);
		FUNC1(device->pnp.device_class,
						  FUNC6(&device->dev), event, 0);
		break;
	case ACPI_PROCESSOR_NOTIFY_THROTTLING:
		FUNC5(pr);
		FUNC1(device->pnp.device_class,
						  FUNC6(&device->dev), event, 0);
		break;
	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
		break;
	}

	return;
}