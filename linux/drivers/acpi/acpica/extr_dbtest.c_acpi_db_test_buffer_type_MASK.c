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
struct TYPE_2__ {int length; int* pointer; } ;
union acpi_object {TYPE_1__ buffer; int /*<<< orphan*/  type; } ;
typedef  int u8 ;
typedef  int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DEBUG_LENGTH_FORMAT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  BUFFER_FILL_VALUE ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_namespace_node*,int /*<<< orphan*/ ,union acpi_object**) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_namespace_node*,union acpi_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static acpi_status
FUNC11(struct acpi_namespace_node *node, u32 bit_length)
{
	union acpi_object *temp1 = NULL;
	union acpi_object *temp2 = NULL;
	union acpi_object *temp3 = NULL;
	u8 *buffer;
	union acpi_object write_value;
	acpi_status status;
	u32 byte_length;
	u32 i;
	u8 extra_bits;

	byte_length = FUNC4(bit_length);
	if (byte_length == 0) {
		FUNC8(" Ignoring zero length buffer");
		return (AE_OK);
	}

	/* Allocate a local buffer */

	buffer = FUNC0(byte_length);
	if (!buffer) {
		return (AE_NO_MEMORY);
	}

	/* Read the original value */

	status = FUNC5(node, ACPI_TYPE_BUFFER, &temp1);
	if (FUNC1(status)) {
		goto exit;
	}

	/* Emit a few bytes of the buffer */

	FUNC8(ACPI_DEBUG_LENGTH_FORMAT, bit_length,
		       temp1->buffer.length);
	for (i = 0; ((i < 8) && (i < byte_length)); i++) {
		FUNC8(" %2.2X", temp1->buffer.pointer[i]);
	}
	FUNC8("... ");

	/*
	 * Write a new value.
	 *
	 * Handle possible extra bits at the end of the buffer. Can
	 * happen for field_units larger than an integer, but the bit
	 * count is not an integral number of bytes. Zero out the
	 * unused bits.
	 */
	FUNC10(buffer, BUFFER_FILL_VALUE, byte_length);
	extra_bits = bit_length % 8;
	if (extra_bits) {
		buffer[byte_length - 1] = FUNC3(extra_bits);
	}

	write_value.type = ACPI_TYPE_BUFFER;
	write_value.buffer.length = byte_length;
	write_value.buffer.pointer = buffer;

	status = FUNC6(node, &write_value);
	if (FUNC1(status)) {
		goto exit;
	}

	/* Ensure that we can read back the new value */

	status = FUNC5(node, ACPI_TYPE_BUFFER, &temp2);
	if (FUNC1(status)) {
		goto exit;
	}

	if (FUNC9(temp2->buffer.pointer, buffer, byte_length)) {
		FUNC8(" MISMATCH 2: New buffer value");
	}

	/* Write back the original value */

	write_value.buffer.length = byte_length;
	write_value.buffer.pointer = temp1->buffer.pointer;

	status = FUNC6(node, &write_value);
	if (FUNC1(status)) {
		goto exit;
	}

	/* Ensure that we can read back the original value */

	status = FUNC5(node, ACPI_TYPE_BUFFER, &temp3);
	if (FUNC1(status)) {
		goto exit;
	}

	if (FUNC9(temp1->buffer.pointer, temp3->buffer.pointer, byte_length)) {
		FUNC8(" MISMATCH 3: While restoring original buffer");
	}

exit:
	FUNC2(buffer);
	if (temp1) {
		FUNC7(temp1);
	}
	if (temp2) {
		FUNC7(temp2);
	}
	if (temp3) {
		FUNC7(temp3);
	}
	return (status);
}