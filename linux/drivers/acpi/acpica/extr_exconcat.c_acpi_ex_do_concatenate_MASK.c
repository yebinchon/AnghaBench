#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {scalar_t__ length; int /*<<< orphan*/ * pointer; } ;
struct TYPE_6__ {char* pointer; scalar_t__ length; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ buffer; TYPE_2__ string; TYPE_1__ integer; } ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;
typedef  int acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERSION ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERT_HEX ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  ACPI_TYPE_BUFFER 130 
#define  ACPI_TYPE_INTEGER 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,union acpi_operand_object**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object**,int /*<<< orphan*/ ) ; 
 scalar_t__ acpi_gbl_integer_byte_width ; 
 union acpi_operand_object* FUNC8 (scalar_t__) ; 
 union acpi_operand_object* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_do_concatenate ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

acpi_status
FUNC15(union acpi_operand_object *operand0,
		       union acpi_operand_object *operand1,
		       union acpi_operand_object **actual_return_desc,
		       struct acpi_walk_state *walk_state)
{
	union acpi_operand_object *local_operand0 = operand0;
	union acpi_operand_object *local_operand1 = operand1;
	union acpi_operand_object *temp_operand1 = NULL;
	union acpi_operand_object *return_desc;
	char *buffer;
	acpi_object_type operand0_type;
	acpi_object_type operand1_type;
	acpi_status status;

	FUNC2(ex_do_concatenate);

	/* Operand 0 preprocessing */

	switch (operand0->common.type) {
	case ACPI_TYPE_INTEGER:
	case ACPI_TYPE_STRING:
	case ACPI_TYPE_BUFFER:

		operand0_type = operand0->common.type;
		break;

	default:

		/* For all other types, get the "object type" string */

		status =
		    FUNC6(operand0,
							  &local_operand0);
		if (FUNC1(status)) {
			goto cleanup;
		}

		operand0_type = ACPI_TYPE_STRING;
		break;
	}

	/* Operand 1 preprocessing */

	switch (operand1->common.type) {
	case ACPI_TYPE_INTEGER:
	case ACPI_TYPE_STRING:
	case ACPI_TYPE_BUFFER:

		operand1_type = operand1->common.type;
		break;

	default:

		/* For all other types, get the "object type" string */

		status =
		    FUNC6(operand1,
							  &local_operand1);
		if (FUNC1(status)) {
			goto cleanup;
		}

		operand1_type = ACPI_TYPE_STRING;
		break;
	}

	/*
	 * Convert the second operand if necessary. The first operand (0)
	 * determines the type of the second operand (1) (See the Data Types
	 * section of the ACPI specification). Both object types are
	 * guaranteed to be either Integer/String/Buffer by the operand
	 * resolution mechanism.
	 */
	switch (operand0_type) {
	case ACPI_TYPE_INTEGER:

		status =
		    FUNC5(local_operand1, &temp_operand1,
					       ACPI_IMPLICIT_CONVERSION);
		break;

	case ACPI_TYPE_BUFFER:

		status =
		    FUNC4(local_operand1, &temp_operand1);
		break;

	case ACPI_TYPE_STRING:

		switch (operand1_type) {
		case ACPI_TYPE_INTEGER:
		case ACPI_TYPE_STRING:
		case ACPI_TYPE_BUFFER:

			/* Other types have already been converted to string */

			status =
			    FUNC7(local_operand1,
						      &temp_operand1,
						      ACPI_IMPLICIT_CONVERT_HEX);
			break;

		default:

			status = AE_OK;
			break;
		}
		break;

	default:

		FUNC0((AE_INFO, "Invalid object type: 0x%X",
			    operand0->common.type));
		status = AE_AML_INTERNAL;
	}

	if (FUNC1(status)) {
		goto cleanup;
	}

	/* Take care with any newly created operand objects */

	if ((local_operand1 != operand1) && (local_operand1 != temp_operand1)) {
		FUNC10(local_operand1);
	}

	local_operand1 = temp_operand1;

	/*
	 * Both operands are now known to be the same object type
	 * (Both are Integer, String, or Buffer), and we can now perform
	 * the concatenation.
	 *
	 * There are three cases to handle, as per the ACPI spec:
	 *
	 * 1) Two Integers concatenated to produce a new Buffer
	 * 2) Two Strings concatenated to produce a new String
	 * 3) Two Buffers concatenated to produce a new Buffer
	 */
	switch (operand0_type) {
	case ACPI_TYPE_INTEGER:

		/* Result of two Integers is a Buffer */
		/* Need enough buffer space for two integers */

		return_desc = FUNC8((acpi_size)
							   FUNC3
							   (acpi_gbl_integer_byte_width));
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		buffer = (char *)return_desc->buffer.pointer;

		/* Copy the first integer, LSB first */

		FUNC11(buffer, &operand0->integer.value,
		       acpi_gbl_integer_byte_width);

		/* Copy the second integer (LSB first) after the first */

		FUNC11(buffer + acpi_gbl_integer_byte_width,
		       &local_operand1->integer.value,
		       acpi_gbl_integer_byte_width);
		break;

	case ACPI_TYPE_STRING:

		/* Result of two Strings is a String */

		return_desc = FUNC9(((acpi_size)
							    local_operand0->
							    string.length +
							    local_operand1->
							    string.length));
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		buffer = return_desc->string.pointer;

		/* Concatenate the strings */

		FUNC14(buffer, local_operand0->string.pointer);
		FUNC13(buffer, local_operand1->string.pointer);
		break;

	case ACPI_TYPE_BUFFER:

		/* Result of two Buffers is a Buffer */

		return_desc = FUNC8(((acpi_size)
							    operand0->buffer.
							    length +
							    local_operand1->
							    buffer.length));
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		buffer = (char *)return_desc->buffer.pointer;

		/* Concatenate the buffers */

		FUNC11(buffer, operand0->buffer.pointer,
		       operand0->buffer.length);
		FUNC11(buffer + operand0->buffer.length,
		       local_operand1->buffer.pointer,
		       local_operand1->buffer.length);
		break;

	default:

		/* Invalid object type, should not happen here */

		FUNC0((AE_INFO, "Invalid object type: 0x%X",
			    operand0->common.type));
		status = AE_AML_INTERNAL;
		goto cleanup;
	}

	*actual_return_desc = return_desc;

cleanup:
	if (local_operand0 != operand0) {
		FUNC10(local_operand0);
	}

	if (local_operand1 != operand1) {
		FUNC10(local_operand1);
	}

	FUNC12(status);
}