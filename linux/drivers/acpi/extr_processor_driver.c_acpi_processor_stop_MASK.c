#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int dummy; } ;
struct acpi_processor {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_processor*) ; 
 struct acpi_processor* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_processor_notify ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_processor*,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct acpi_device *device = FUNC0(dev);
	struct acpi_processor *pr;

	if (!device)
		return 0;

	FUNC5(device->handle, ACPI_DEVICE_NOTIFY,
				   acpi_processor_notify);

	pr = FUNC2(device);
	if (!pr)
		return 0;
	FUNC3(pr);

	FUNC4(pr, device);

	FUNC1(pr);

	return 0;
}