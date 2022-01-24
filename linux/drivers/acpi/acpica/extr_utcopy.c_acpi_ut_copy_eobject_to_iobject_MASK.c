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
union acpi_object {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (union acpi_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_copy_eobject_to_iobject ; 

acpi_status
FUNC4(union acpi_object *external_object,
				union acpi_operand_object **internal_object)
{
	acpi_status status;

	FUNC0(ut_copy_eobject_to_iobject);

	if (external_object->type == ACPI_TYPE_PACKAGE) {
		status =
		    FUNC1(external_object,
						      internal_object);
	} else {
		/*
		 * Build a simple object (no nested objects)
		 */
		status = FUNC2(external_object,
							 internal_object);
	}

	FUNC3(status);
}