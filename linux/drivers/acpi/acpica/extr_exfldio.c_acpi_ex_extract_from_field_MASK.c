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
struct TYPE_2__ {int bit_length; int access_byte_width; int start_field_bit_offset; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_INTEGER_BIT_SIZE ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  ACPI_READ ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  AE_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_extract_from_field ; 
 int /*<<< orphan*/  FUNC9 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC12(union acpi_operand_object *obj_desc,
			   void *buffer, u32 buffer_length)
{
	acpi_status status;
	u64 raw_datum;
	u64 merged_datum;
	u32 field_offset = 0;
	u32 buffer_offset = 0;
	u32 buffer_tail_bits;
	u32 datum_count;
	u32 field_datum_count;
	u32 access_bit_width;
	u32 i;

	FUNC2(ex_extract_from_field);

	/* Validate target buffer and clear it */

	if (buffer_length <
	    FUNC6(obj_desc->common_field.bit_length)) {
		FUNC0((AE_INFO,
			    "Field size %u (bits) is too large for buffer (%u)",
			    obj_desc->common_field.bit_length, buffer_length));

		FUNC11(AE_BUFFER_OVERFLOW);
	}

	FUNC10(buffer, 0, buffer_length);
	access_bit_width = FUNC5(obj_desc->common_field.access_byte_width);

	/* Handle the simple case here */

	if ((obj_desc->common_field.start_field_bit_offset == 0) &&
	    (obj_desc->common_field.bit_length == access_bit_width)) {
		if (buffer_length >= sizeof(u64)) {
			status =
			    FUNC8(obj_desc, 0, buffer,
						   ACPI_READ);
		} else {
			/* Use raw_datum (u64) to handle buffers < 64 bits */

			status =
			    FUNC8(obj_desc, 0, &raw_datum,
						   ACPI_READ);
			FUNC9(buffer, &raw_datum, buffer_length);
		}

		FUNC11(status);
	}

/* TBD: Move to common setup code */

	/* Field algorithm is limited to sizeof(u64), truncate if needed */

	if (obj_desc->common_field.access_byte_width > sizeof(u64)) {
		obj_desc->common_field.access_byte_width = sizeof(u64);
		access_bit_width = sizeof(u64) * 8;
	}

	/* Compute the number of datums (access width data items) */

	datum_count =
	    FUNC7(obj_desc->common_field.bit_length,
			     access_bit_width);

	field_datum_count = FUNC7(obj_desc->common_field.bit_length +
					     obj_desc->common_field.
					     start_field_bit_offset,
					     access_bit_width);

	/* Priming read from the field */

	status =
	    FUNC8(obj_desc, field_offset, &raw_datum,
				   ACPI_READ);
	if (FUNC1(status)) {
		FUNC11(status);
	}
	merged_datum =
	    raw_datum >> obj_desc->common_field.start_field_bit_offset;

	/* Read the rest of the field */

	for (i = 1; i < field_datum_count; i++) {

		/* Get next input datum from the field */

		field_offset += obj_desc->common_field.access_byte_width;
		status =
		    FUNC8(obj_desc, field_offset, &raw_datum,
					   ACPI_READ);
		if (FUNC1(status)) {
			FUNC11(status);
		}

		/*
		 * Merge with previous datum if necessary.
		 *
		 * Note: Before the shift, check if the shift value will be larger than
		 * the integer size. If so, there is no need to perform the operation.
		 * This avoids the differences in behavior between different compilers
		 * concerning shift values larger than the target data width.
		 */
		if (access_bit_width -
		    obj_desc->common_field.start_field_bit_offset <
		    ACPI_INTEGER_BIT_SIZE) {
			merged_datum |=
			    raw_datum << (access_bit_width -
					  obj_desc->common_field.
					  start_field_bit_offset);
		}

		if (i == datum_count) {
			break;
		}

		/* Write merged datum to target buffer */

		FUNC9(((char *)buffer) + buffer_offset, &merged_datum,
		       FUNC4(obj_desc->common_field.access_byte_width,
				buffer_length - buffer_offset));

		buffer_offset += obj_desc->common_field.access_byte_width;
		merged_datum =
		    raw_datum >> obj_desc->common_field.start_field_bit_offset;
	}

	/* Mask off any extra bits in the last datum */

	buffer_tail_bits = obj_desc->common_field.bit_length % access_bit_width;
	if (buffer_tail_bits) {
		merged_datum &= FUNC3(buffer_tail_bits);
	}

	/* Write the last datum to the buffer */

	FUNC9(((char *)buffer) + buffer_offset, &merged_datum,
	       FUNC4(obj_desc->common_field.access_byte_width,
			buffer_length - buffer_offset));

	FUNC11(AE_OK);
}