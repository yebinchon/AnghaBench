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
struct TYPE_2__ {scalar_t__ need_hotplug_init; } ;
struct acpi_processor {TYPE_1__ flags; } ;
struct acpi_device {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_ACPI_CPU_FREQ_PSS ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct acpi_processor*) ; 
 struct acpi_processor* FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_idle_driver ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_processor_notify ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_processor*,struct acpi_device*) ; 
 int FUNC8 (struct acpi_processor*,struct acpi_device*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC11(struct acpi_device *device)
{
	struct acpi_processor *pr = FUNC3(device);
	acpi_status status;
	int result = 0;

	if (!pr)
		return -ENODEV;

	if (pr->flags.need_hotplug_init)
		return 0;

	result = FUNC2(pr);
	if (result && !FUNC1(CONFIG_ACPI_CPU_FREQ_PSS))
		FUNC10(&device->dev, "CPPC data invalid or not present\n");

	if (!FUNC9() || FUNC9() == &acpi_idle_driver)
		FUNC6(pr);

	result = FUNC8(pr, device);
	if (result)
		goto err_power_exit;

	status = FUNC4(device->handle, ACPI_DEVICE_NOTIFY,
					     acpi_processor_notify, device);
	if (FUNC0(status))
		return 0;

	result = -ENODEV;
	FUNC7(pr, device);

err_power_exit:
	FUNC5(pr);
	return result;
}