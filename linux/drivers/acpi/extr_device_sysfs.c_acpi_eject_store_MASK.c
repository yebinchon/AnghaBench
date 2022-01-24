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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ejectable; } ;
struct acpi_device {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev; TYPE_3__ flags; int /*<<< orphan*/  driver; TYPE_2__* handler; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_object_type ;
struct TYPE_4__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_5__ {TYPE_1__ hotplug; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_OST_EC_OSPM_EJECT ; 
 int /*<<< orphan*/  ACPI_OST_SC_NON_SPECIFIC_FAILURE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ AE_NO_MEMORY ; 
 size_t EAGAIN ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct acpi_device* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *d, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct acpi_device *acpi_device = FUNC7(d);
	acpi_object_type not_used;
	acpi_status status;

	if (!count || buf[0] != '1')
		return -EINVAL;

	if ((!acpi_device->handler || !acpi_device->handler->hotplug.enabled)
	    && !acpi_device->driver)
		return -ENODEV;

	status = FUNC3(acpi_device->handle, &not_used);
	if (FUNC0(status) || !acpi_device->flags.ejectable)
		return -ENODEV;

	FUNC5(&acpi_device->dev);
	status = FUNC4(acpi_device, ACPI_OST_EC_OSPM_EJECT);
	if (FUNC1(status))
		return count;

	FUNC6(&acpi_device->dev);
	FUNC2(acpi_device->handle, ACPI_OST_EC_OSPM_EJECT,
			  ACPI_OST_SC_NON_SPECIFIC_FAILURE, NULL);
	return status == AE_NO_MEMORY ? -ENOMEM : -EAGAIN;
}