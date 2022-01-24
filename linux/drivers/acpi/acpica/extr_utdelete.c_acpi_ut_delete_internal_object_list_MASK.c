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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*) ; 

void FUNC3(union acpi_operand_object **obj_list)
{
	union acpi_operand_object **internal_obj;

	FUNC1();

	/* Walk the null-terminated internal list */

	for (internal_obj = obj_list; *internal_obj; internal_obj++) {
		FUNC2(*internal_obj);
	}

	/* Free the combined parameter pointer list and object array */

	FUNC0(obj_list);
	return;
}