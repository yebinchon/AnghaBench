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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_operand_cache ; 
 union acpi_operand_object* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ut_allocate_object_desc_dbg ; 

void *FUNC6(const char *module_name,
				       u32 line_number, u32 component_id)
{
	union acpi_operand_object *object;

	FUNC2(ut_allocate_object_desc_dbg);

	object = FUNC4(acpi_gbl_operand_cache);
	if (!object) {
		FUNC1((module_name, line_number,
			    "Could not allocate an object descriptor"));

		FUNC5(NULL);
	}

	/* Mark the descriptor type */

	FUNC3(object, ACPI_DESC_TYPE_OPERAND);

	FUNC0((ACPI_DB_ALLOCATIONS, "%p Size %X\n",
			  object, (u32) sizeof(union acpi_operand_object)));

	FUNC5(object);
}