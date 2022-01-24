#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {union acpi_operand_object* object; int /*<<< orphan*/  class; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_DESC_TYPE_NAMED 132 
#define  ACPI_DESC_TYPE_OPERAND 131 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int FUNC3 (union acpi_operand_object*) ; 
#define  ACPI_REFCLASS_ARG 130 
#define  ACPI_REFCLASS_DEBUG 129 
#define  ACPI_REFCLASS_LOCAL 128 
 int /*<<< orphan*/  ACPI_REFCLASS_REFOF ; 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 union acpi_operand_object* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_get_object_reference ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(union acpi_operand_object *obj_desc,
			     union acpi_operand_object **return_desc,
			     struct acpi_walk_state *walk_state)
{
	union acpi_operand_object *reference_obj;
	union acpi_operand_object *referenced_obj;

	FUNC2(ex_get_object_reference, obj_desc);

	*return_desc = NULL;

	switch (FUNC3(obj_desc)) {
	case ACPI_DESC_TYPE_OPERAND:

		if (obj_desc->common.type != ACPI_TYPE_LOCAL_REFERENCE) {
			FUNC6(AE_AML_OPERAND_TYPE);
		}

		/*
		 * Must be a reference to a Local or Arg
		 */
		switch (obj_desc->reference.class) {
		case ACPI_REFCLASS_LOCAL:
		case ACPI_REFCLASS_ARG:
		case ACPI_REFCLASS_DEBUG:

			/* The referenced object is the pseudo-node for the local/arg */

			referenced_obj = obj_desc->reference.object;
			break;

		default:

			FUNC1((AE_INFO, "Invalid Reference Class 0x%2.2X",
				    obj_desc->reference.class));
			FUNC6(AE_AML_OPERAND_TYPE);
		}
		break;

	case ACPI_DESC_TYPE_NAMED:
		/*
		 * A named reference that has already been resolved to a Node
		 */
		referenced_obj = obj_desc;
		break;

	default:

		FUNC1((AE_INFO, "Invalid descriptor type 0x%X",
			    FUNC3(obj_desc)));
		FUNC6(AE_TYPE);
	}

	/* Create a new reference object */

	reference_obj =
	    FUNC4(ACPI_TYPE_LOCAL_REFERENCE);
	if (!reference_obj) {
		FUNC6(AE_NO_MEMORY);
	}

	reference_obj->reference.class = ACPI_REFCLASS_REFOF;
	reference_obj->reference.object = referenced_obj;
	*return_desc = reference_obj;

	FUNC0((ACPI_DB_EXEC,
			  "Object %p Type [%s], returning Reference %p\n",
			  obj_desc, FUNC5(obj_desc),
			  *return_desc));

	FUNC6(AE_OK);
}