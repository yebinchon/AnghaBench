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
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 union acpi_operand_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  acpi_db_walk_for_references ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC3(char *object_arg)
{
	union acpi_operand_object *obj_desc;
	acpi_size address;

	/* Convert string to object pointer */

	address = FUNC2(object_arg, NULL, 16);
	obj_desc = FUNC0(address);

	/* Search all nodes in namespace */

	(void)FUNC1(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
				  ACPI_UINT32_MAX, acpi_db_walk_for_references,
				  NULL, (void *)obj_desc, NULL);
}