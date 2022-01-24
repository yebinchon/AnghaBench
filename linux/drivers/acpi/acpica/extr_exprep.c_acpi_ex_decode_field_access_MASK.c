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
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  bit_length; int /*<<< orphan*/  start_field_bit_offset; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ common_field; } ;
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_BUFFER_FIELD ; 
 int /*<<< orphan*/  AE_INFO ; 
#define  AML_FIELD_ACCESS_ANY 133 
#define  AML_FIELD_ACCESS_BUFFER 132 
#define  AML_FIELD_ACCESS_BYTE 131 
#define  AML_FIELD_ACCESS_DWORD 130 
#define  AML_FIELD_ACCESS_QWORD 129 
 int AML_FIELD_ACCESS_TYPE_MASK ; 
#define  AML_FIELD_ACCESS_WORD 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ex_decode_field_access ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u32
FUNC4(union acpi_operand_object *obj_desc,
			    u8 field_flags, u32 * return_byte_alignment)
{
	u32 access;
	u32 byte_alignment;
	u32 bit_length;

	FUNC1(ex_decode_field_access);

	access = (field_flags & AML_FIELD_ACCESS_TYPE_MASK);

	switch (access) {
	case AML_FIELD_ACCESS_ANY:

#ifdef ACPI_UNDER_DEVELOPMENT
		byte_alignment =
		    acpi_ex_generate_access(obj_desc->common_field.
					    start_field_bit_offset,
					    obj_desc->common_field.bit_length,
					    0xFFFFFFFF
					    /* Temp until we pass region_length as parameter */
		    );
		bit_length = byte_alignment * 8;
#endif

		byte_alignment = 1;
		bit_length = 8;
		break;

	case AML_FIELD_ACCESS_BYTE:
	case AML_FIELD_ACCESS_BUFFER:	/* ACPI 2.0 (SMBus Buffer) */

		byte_alignment = 1;
		bit_length = 8;
		break;

	case AML_FIELD_ACCESS_WORD:

		byte_alignment = 2;
		bit_length = 16;
		break;

	case AML_FIELD_ACCESS_DWORD:

		byte_alignment = 4;
		bit_length = 32;
		break;

	case AML_FIELD_ACCESS_QWORD:	/* ACPI 2.0 */

		byte_alignment = 8;
		bit_length = 64;
		break;

	default:

		/* Invalid field access type */

		FUNC0((AE_INFO, "Unknown field access type 0x%X", access));

		FUNC3(0);
	}

	if (obj_desc->common.type == ACPI_TYPE_BUFFER_FIELD) {
		/*
		 * buffer_field access can be on any byte boundary, so the
		 * byte_alignment is always 1 byte -- regardless of any byte_alignment
		 * implied by the field access type.
		 */
		byte_alignment = 1;
	}

	*return_byte_alignment = byte_alignment;
	FUNC3(bit_length);
}