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
struct TYPE_2__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,union acpi_operand_object*) ; 
 union acpi_operand_object* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_copy_iobject_to_iobject ; 

acpi_status
FUNC7(union acpi_operand_object *source_desc,
				union acpi_operand_object **dest_desc,
				struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;

	FUNC1(ut_copy_iobject_to_iobject);

	/* Create the top level object */

	*dest_desc = FUNC4(source_desc->common.type);
	if (!*dest_desc) {
		FUNC6(AE_NO_MEMORY);
	}

	/* Copy the object and possible subobjects */

	if (source_desc->common.type == ACPI_TYPE_PACKAGE) {
		status =
		    FUNC2(source_desc, *dest_desc,
						      walk_state);
	} else {
		status = FUNC3(source_desc, *dest_desc);
	}

	/* Delete the allocated object if copy failed */

	if (FUNC0(status)) {
		FUNC5(*dest_desc);
	}

	FUNC6(status);
}