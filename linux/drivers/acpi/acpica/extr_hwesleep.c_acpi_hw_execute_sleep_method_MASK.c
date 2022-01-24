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
struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,struct acpi_object_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_execute_sleep_method ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC4(char *method_pathname, u32 integer_argument)
{
	struct acpi_object_list arg_list;
	union acpi_object arg;
	acpi_status status;

	FUNC2(hw_execute_sleep_method);

	/* One argument, integer_argument; No return value expected */

	arg_list.count = 1;
	arg_list.pointer = &arg;
	arg.type = ACPI_TYPE_INTEGER;
	arg.integer.value = (u64)integer_argument;

	status = FUNC3(NULL, method_pathname, &arg_list, NULL);
	if (FUNC1(status) && status != AE_NOT_FOUND) {
		FUNC0((AE_INFO, status, "While executing method %s",
				method_pathname));
	}

	return_VOID;
}