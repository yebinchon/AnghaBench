#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  field_flags; int /*<<< orphan*/  base_byte_offset; int /*<<< orphan*/  start_field_bit_offset; int /*<<< orphan*/  bit_length; } ;
struct TYPE_17__ {int type; int flags; } ;
struct TYPE_16__ {int length; void* pointer; } ;
struct TYPE_15__ {int length; void* pointer; } ;
struct TYPE_14__ {int /*<<< orphan*/  value; } ;
struct TYPE_13__ {TYPE_3__* region_obj; scalar_t__ base_byte_offset; int /*<<< orphan*/  bit_length; } ;
union acpi_operand_object {TYPE_9__ common_field; TYPE_8__ common; TYPE_7__ string; TYPE_6__ buffer; TYPE_5__ integer; TYPE_4__ field; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_size ;
struct TYPE_11__ {scalar_t__ internal_pcc_buffer; } ;
struct TYPE_10__ {scalar_t__ space_id; scalar_t__ address; } ;
struct TYPE_12__ {TYPE_2__ field; TYPE_1__ region; } ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_GPIO ; 
 scalar_t__ ACPI_ADR_SPACE_GSBUS ; 
 scalar_t__ ACPI_ADR_SPACE_IPMI ; 
 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ; 
 scalar_t__ ACPI_ADR_SPACE_SMBUS ; 
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 130 
 int ACPI_TYPE_BUFFER_FIELD ; 
#define  ACPI_TYPE_INTEGER 129 
 int ACPI_TYPE_LOCAL_REGION_FIELD ; 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  ACPI_WRITE ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ PCC_MASTER_SUBSPACE ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  ex_write_data_to_field ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC16(union acpi_operand_object *source_desc,
			    union acpi_operand_object *obj_desc,
			    union acpi_operand_object **result_desc)
{
	acpi_status status;
	u32 buffer_length;
	u32 data_length;
	void *buffer;

	FUNC2(ex_write_data_to_field, obj_desc);

	/* Parameter validation */

	if (!source_desc || !obj_desc) {
		FUNC15(AE_AML_NO_OPERAND);
	}

	if (obj_desc->common.type == ACPI_TYPE_BUFFER_FIELD) {
		/*
		 * If the buffer_field arguments have not been previously evaluated,
		 * evaluate them now and save the results.
		 */
		if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
			status = FUNC6(obj_desc);
			if (FUNC1(status)) {
				FUNC15(status);
			}
		}
	} else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
		   (obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_GPIO)) {

		/* General Purpose I/O */

		status = FUNC11(source_desc, obj_desc, result_desc);
		FUNC15(status);
	} else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
		   (obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_SMBUS
		    || obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_GSBUS
		    || obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_IPMI)) {

		/* SMBus, GSBus, IPMI serial */

		status =
		    FUNC12(source_desc, obj_desc,
					     result_desc);
		FUNC15(status);
	} else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
		   (obj_desc->field.region_obj->region.space_id ==
		    ACPI_ADR_SPACE_PLATFORM_COMM)) {
		/*
		 * According to the spec a write to the COMD field will invoke the
		 * region handler. Otherwise, write to the pcc_internal buffer. This
		 * implementation will use the offsets specified rather than the name
		 * of the field. This is considered safer because some firmware tools
		 * are known to obfiscate named objects.
		 */
		data_length =
		    (acpi_size)FUNC3(obj_desc->field.
							   bit_length);
		FUNC14(obj_desc->field.region_obj->field.internal_pcc_buffer +
		       obj_desc->field.base_byte_offset,
		       source_desc->buffer.pointer, data_length);

		if ((obj_desc->field.region_obj->region.address ==
		     PCC_MASTER_SUBSPACE
		     && FUNC5(obj_desc->field.
						base_byte_offset))
		    || FUNC4(obj_desc->field.
						base_byte_offset)) {

			/* Perform the write */

			FUNC0((ACPI_DB_BFIELD,
					  "PCC COMD field has been written. Invoking PCC handler now.\n"));

			status =
			    FUNC7(obj_desc, 0,
						  (u64 *)obj_desc->field.
						  region_obj->field.
						  internal_pcc_buffer,
						  ACPI_WRITE);
			FUNC15(status);
		}
		return (AE_OK);
	}

	/* Get a pointer to the data to be written */

	switch (source_desc->common.type) {
	case ACPI_TYPE_INTEGER:

		buffer = &source_desc->integer.value;
		buffer_length = sizeof(source_desc->integer.value);
		break;

	case ACPI_TYPE_BUFFER:

		buffer = source_desc->buffer.pointer;
		buffer_length = source_desc->buffer.length;
		break;

	case ACPI_TYPE_STRING:

		buffer = source_desc->string.pointer;
		buffer_length = source_desc->string.length;
		break;

	default:
		FUNC15(AE_AML_OPERAND_TYPE);
	}

	FUNC0((ACPI_DB_BFIELD,
			  "FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\n",
			  source_desc,
			  FUNC13(source_desc->common.type),
			  source_desc->common.type, buffer, buffer_length));

	FUNC0((ACPI_DB_BFIELD,
			  "FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\n",
			  obj_desc,
			  FUNC13(obj_desc->common.type),
			  obj_desc->common.type,
			  obj_desc->common_field.bit_length,
			  obj_desc->common_field.start_field_bit_offset,
			  obj_desc->common_field.base_byte_offset));

	/* Lock entire transaction if requested */

	FUNC8(obj_desc->common_field.field_flags);

	/* Write to the field */

	status = FUNC9(obj_desc, buffer, buffer_length);
	FUNC10(obj_desc->common_field.field_flags);
	FUNC15(status);
}