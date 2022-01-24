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
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC2 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  acpi_gbl_operand_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  ut_delete_object_desc ; 

void FUNC5(union acpi_operand_object *object)
{
	FUNC1(ut_delete_object_desc, object);

	/* Object must be of type union acpi_operand_object */

	if (FUNC2(object) != ACPI_DESC_TYPE_OPERAND) {
		FUNC0((AE_INFO,
			    "%p is not an ACPI Operand object [%s]", object,
			    FUNC4(object)));
		return_VOID;
	}

	(void)FUNC3(acpi_gbl_operand_cache, object);
	return_VOID;
}