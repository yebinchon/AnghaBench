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
typedef  union acpi_object {int dummy; } acpi_object ;
struct acpi_device_properties {int /*<<< orphan*/  list; union acpi_object const* properties; int /*<<< orphan*/  const* guid; } ;
struct acpi_device_data {int /*<<< orphan*/  properties; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct acpi_device_properties* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct acpi_device_properties *
FUNC3(struct acpi_device_data *data, const guid_t *guid,
		    const union acpi_object *properties)
{
	struct acpi_device_properties *props;

	props = FUNC1(sizeof(*props), GFP_KERNEL);
	if (props) {
		FUNC0(&props->list);
		props->guid = guid;
		props->properties = properties;
		FUNC2(&props->list, &data->properties);
	}

	return props;
}