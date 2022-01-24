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
struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
struct dock_station {int /*<<< orphan*/  handle; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC4(struct dock_station *ds, int dock)
{
	acpi_status status;
	struct acpi_object_list arg_list;
	union acpi_object arg;
	unsigned long long value;

	FUNC3(ds->handle, "%s\n", dock ? "docking" : "undocking");

	/* _DCK method has one argument */
	arg_list.count = 1;
	arg_list.pointer = &arg;
	arg.type = ACPI_TYPE_INTEGER;
	arg.integer.value = dock;
	status = FUNC1(ds->handle, "_DCK", &arg_list, &value);
	if (FUNC0(status) && status != AE_NOT_FOUND)
		FUNC2(ds->handle, "Failed to execute _DCK (0x%x)\n",
				status);
}