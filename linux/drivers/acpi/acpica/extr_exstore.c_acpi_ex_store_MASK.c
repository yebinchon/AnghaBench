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
struct TYPE_4__ {int class; int /*<<< orphan*/  value; struct acpi_namespace_node* object; } ;
struct TYPE_3__ {int type; int flags; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERSION ; 
 int /*<<< orphan*/  ACPI_LV_INFO ; 
#define  ACPI_REFCLASS_ARG 134 
#define  ACPI_REFCLASS_DEBUG 133 
#define  ACPI_REFCLASS_INDEX 132 
#define  ACPI_REFCLASS_LOCAL 131 
#define  ACPI_REFCLASS_REFOF 130 
#define  ACPI_TYPE_INTEGER 129 
#define  ACPI_TYPE_LOCAL_REFERENCE 128 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_AML_CONSTANT ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,struct acpi_namespace_node*,struct acpi_walk_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_store ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(union acpi_operand_object *source_desc,
	      union acpi_operand_object *dest_desc,
	      struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *ref_desc = dest_desc;

	FUNC4(ex_store, dest_desc);

	/* Validate parameters */

	if (!source_desc || !dest_desc) {
		FUNC3((AE_INFO, "Null parameter"));
		FUNC10(AE_AML_NO_OPERAND);
	}

	/* dest_desc can be either a namespace node or an ACPI object */

	if (FUNC5(dest_desc) == ACPI_DESC_TYPE_NAMED) {
		/*
		 * Dest is a namespace node,
		 * Storing an object into a Named node.
		 */
		status = FUNC8(source_desc,
						      (struct
						       acpi_namespace_node *)
						      dest_desc, walk_state,
						      ACPI_IMPLICIT_CONVERSION);

		FUNC10(status);
	}

	/* Destination object must be a Reference or a Constant object */

	switch (dest_desc->common.type) {
	case ACPI_TYPE_LOCAL_REFERENCE:

		break;

	case ACPI_TYPE_INTEGER:

		/* Allow stores to Constants -- a Noop as per ACPI spec */

		if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
			FUNC10(AE_OK);
		}

		/*lint -fallthrough */

	default:

		/* Destination is not a Reference object */

		FUNC3((AE_INFO,
			    "Target is not a Reference or Constant object - [%s] %p",
			    FUNC9(dest_desc),
			    dest_desc));

		FUNC10(AE_AML_OPERAND_TYPE);
	}

	/*
	 * Examine the Reference class. These cases are handled:
	 *
	 * 1) Store to Name (Change the object associated with a name)
	 * 2) Store to an indexed area of a Buffer or Package
	 * 3) Store to a Method Local or Arg
	 * 4) Store to the debug object
	 */
	switch (ref_desc->reference.class) {
	case ACPI_REFCLASS_REFOF:

		/* Storing an object into a Name "container" */

		status = FUNC8(source_desc,
						      ref_desc->reference.
						      object, walk_state,
						      ACPI_IMPLICIT_CONVERSION);
		break;

	case ACPI_REFCLASS_INDEX:

		/* Storing to an Index (pointer into a packager or buffer) */

		status =
		    FUNC7(source_desc, ref_desc,
						  walk_state);
		break;

	case ACPI_REFCLASS_LOCAL:
	case ACPI_REFCLASS_ARG:

		/* Store to a method local/arg  */

		status =
		    FUNC6(ref_desc->reference.class,
						  ref_desc->reference.value,
						  source_desc, walk_state);
		break;

	case ACPI_REFCLASS_DEBUG:
		/*
		 * Storing to the Debug object causes the value stored to be
		 * displayed and otherwise has no effect -- see ACPI Specification
		 */
		FUNC1((ACPI_DB_EXEC,
				  "**** Write to Debug Object: Object %p [%s] ****:\n\n",
				  source_desc,
				  FUNC9(source_desc)));

		FUNC0(source_desc, 0, 0);
		break;

	default:

		FUNC3((AE_INFO, "Unknown Reference Class 0x%2.2X",
			    ref_desc->reference.class));
		FUNC2(ref_desc, ACPI_LV_INFO);

		status = AE_AML_INTERNAL;
		break;
	}

	FUNC10(status);
}