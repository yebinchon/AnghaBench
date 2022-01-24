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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ut_get_object_type_name ; 

const char *FUNC6(union acpi_operand_object *obj_desc)
{
	FUNC1(ut_get_object_type_name);

	if (!obj_desc) {
		FUNC0((ACPI_DB_EXEC, "Null Object Descriptor\n"));
		FUNC5("[NULL Object Descriptor]");
	}

	/* These descriptor types share a common area */

	if ((FUNC2(obj_desc) != ACPI_DESC_TYPE_OPERAND) &&
	    (FUNC2(obj_desc) != ACPI_DESC_TYPE_NAMED)) {
		FUNC0((ACPI_DB_EXEC,
				  "Invalid object descriptor type: 0x%2.2X [%s] (%p)\n",
				  FUNC2(obj_desc),
				  FUNC3(obj_desc),
				  obj_desc));

		FUNC5("Invalid object");
	}

	FUNC5(FUNC4(obj_desc->common.type));
}