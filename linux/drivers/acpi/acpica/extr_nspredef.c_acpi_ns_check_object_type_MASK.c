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
struct TYPE_3__ {int /*<<< orphan*/  ascii; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; TYPE_1__ name; } ;
union acpi_operand_object {TYPE_2__ node; } ;
typedef  scalar_t__ u32 ;
struct acpi_evaluate_info {scalar_t__ return_btype; int /*<<< orphan*/  node_flags; int /*<<< orphan*/  full_pathname; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ FUNC0 (union acpi_operand_object*) ; 
 scalar_t__ ACPI_NOT_PACKAGE_ELEMENT ; 
 scalar_t__ ACPI_RTYPE_ANY ; 
 scalar_t__ ACPI_RTYPE_REFERENCE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_evaluate_info*,union acpi_operand_object*) ; 
 scalar_t__ FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_evaluate_info*,scalar_t__,scalar_t__,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC9(struct acpi_evaluate_info *info,
			  union acpi_operand_object **return_object_ptr,
			  u32 expected_btypes, u32 package_index)
{
	union acpi_operand_object *return_object = *return_object_ptr;
	acpi_status status = AE_OK;
	char type_buffer[96];	/* Room for 10 types */

	/* A Namespace node should not get here, but make sure */

	if (return_object &&
	    FUNC0(return_object) == ACPI_DESC_TYPE_NAMED) {
		FUNC2((AE_INFO, info->full_pathname,
				      info->node_flags,
				      "Invalid return type - Found a Namespace node [%4.4s] type %s",
				      return_object->node.name.ascii,
				      FUNC8(return_object->node.
							    type)));
		return (AE_AML_OPERAND_TYPE);
	}

	/*
	 * Convert the object type (ACPI_TYPE_xxx) to a bitmapped object type.
	 * The bitmapped type allows multiple possible return types.
	 *
	 * Note, the cases below must handle all of the possible types returned
	 * from all of the predefined names (including elements of returned
	 * packages)
	 */
	info->return_btype = FUNC4(return_object);
	if (info->return_btype == ACPI_RTYPE_ANY) {

		/* Not one of the supported objects, must be incorrect */
		goto type_error_exit;
	}

	/* For reference objects, check that the reference type is correct */

	if ((info->return_btype & expected_btypes) == ACPI_RTYPE_REFERENCE) {
		status = FUNC3(info, return_object);
		return (status);
	}

	/* Attempt simple repair of the returned object if necessary */

	status = FUNC5(info, expected_btypes,
				       package_index, return_object_ptr);
	if (FUNC1(status)) {
		return (AE_OK);	/* Successful repair */
	}

type_error_exit:

	/* Create a string with all expected types for this predefined object */

	FUNC6(type_buffer, expected_btypes);

	if (!return_object) {
		FUNC2((AE_INFO, info->full_pathname,
				      info->node_flags,
				      "Expected return object of type %s",
				      type_buffer));
	} else if (package_index == ACPI_NOT_PACKAGE_ELEMENT) {
		FUNC2((AE_INFO, info->full_pathname,
				      info->node_flags,
				      "Return type mismatch - found %s, expected %s",
				      FUNC7
				      (return_object), type_buffer));
	} else {
		FUNC2((AE_INFO, info->full_pathname,
				      info->node_flags,
				      "Return Package type mismatch at index %u - "
				      "found %s, expected %s", package_index,
				      FUNC7
				      (return_object), type_buffer));
	}

	return (AE_AML_OPERAND_TYPE);
}