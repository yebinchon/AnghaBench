#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; scalar_t__ pointer; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_1__ package; } ;
struct acpi_device_data {int /*<<< orphan*/  properties; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_BUFFER ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device_data*,int /*<<< orphan*/  const*,union acpi_object const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(const union acpi_object *desc,
				    struct acpi_device_data *data)
{
	int i;

	if (desc->package.count % 2)
		return false;

	/* Look for the device properties GUID. */
	for (i = 0; i < desc->package.count; i += 2) {
		const union acpi_object *guid, *properties;

		guid = &desc->package.elements[i];
		properties = &desc->package.elements[i + 1];

		/*
		 * The first element must be a GUID and the second one must be
		 * a package.
		 */
		if (guid->type != ACPI_TYPE_BUFFER ||
		    guid->buffer.length != 16 ||
		    properties->type != ACPI_TYPE_PACKAGE)
			break;

		if (!FUNC1((guid_t *)guid->buffer.pointer))
			continue;

		/*
		 * We found the matching GUID. Now validate the format of the
		 * package immediately following it.
		 */
		if (!FUNC2(properties))
			continue;

		FUNC0(data, (const guid_t *)guid->buffer.pointer,
				    properties);
	}

	return !FUNC3(&data->properties);
}