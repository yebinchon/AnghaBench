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
struct TYPE_2__ {scalar_t__ length; int /*<<< orphan*/ * pointer; int /*<<< orphan*/  flags; } ;
union acpi_operand_object {TYPE_1__ buffer; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 union acpi_operand_object* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ut_create_buffer_object ; 

union acpi_operand_object *FUNC6(acpi_size buffer_size)
{
	union acpi_operand_object *buffer_desc;
	u8 *buffer = NULL;

	FUNC2(ut_create_buffer_object, buffer_size);

	/* Create a new Buffer object */

	buffer_desc = FUNC3(ACPI_TYPE_BUFFER);
	if (!buffer_desc) {
		FUNC5(NULL);
	}

	/* Create an actual buffer only if size > 0 */

	if (buffer_size > 0) {

		/* Allocate the actual buffer */

		buffer = FUNC0(buffer_size);
		if (!buffer) {
			FUNC1((AE_INFO, "Could not allocate size %u",
				    (u32)buffer_size));

			FUNC4(buffer_desc);
			FUNC5(NULL);
		}
	}

	/* Complete buffer object initialization */

	buffer_desc->buffer.flags |= AOPOBJ_DATA_VALID;
	buffer_desc->buffer.pointer = buffer;
	buffer_desc->buffer.length = (u32) buffer_size;

	/* Return the new buffer descriptor */

	FUNC5(buffer_desc);
}