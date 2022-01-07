
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {int field_flags; int base_byte_offset; int start_field_bit_offset; int bit_length; } ;
struct TYPE_17__ {int type; int flags; } ;
struct TYPE_16__ {int length; void* pointer; } ;
struct TYPE_15__ {int length; void* pointer; } ;
struct TYPE_14__ {int value; } ;
struct TYPE_13__ {TYPE_3__* region_obj; scalar_t__ base_byte_offset; int bit_length; } ;
union acpi_operand_object {TYPE_9__ common_field; TYPE_8__ common; TYPE_7__ string; TYPE_6__ buffer; TYPE_5__ integer; TYPE_4__ field; } ;
typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_size ;
struct TYPE_11__ {scalar_t__ internal_pcc_buffer; } ;
struct TYPE_10__ {scalar_t__ space_id; scalar_t__ address; } ;
struct TYPE_12__ {TYPE_2__ field; TYPE_1__ region; } ;


 scalar_t__ ACPI_ADR_SPACE_GPIO ;
 scalar_t__ ACPI_ADR_SPACE_GSBUS ;
 scalar_t__ ACPI_ADR_SPACE_IPMI ;
 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ;
 scalar_t__ ACPI_ADR_SPACE_SMBUS ;
 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_ROUND_BITS_UP_TO_BYTES (int ) ;

 int ACPI_TYPE_BUFFER_FIELD ;

 int ACPI_TYPE_LOCAL_REGION_FIELD ;

 int ACPI_WRITE ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 scalar_t__ GENERIC_SUBSPACE_COMMAND (scalar_t__) ;
 scalar_t__ MASTER_SUBSPACE_COMMAND (scalar_t__) ;
 scalar_t__ PCC_MASTER_SUBSPACE ;
 int acpi_ds_get_buffer_field_arguments (union acpi_operand_object*) ;
 int acpi_ex_access_region (union acpi_operand_object*,int ,int *,int ) ;
 int acpi_ex_acquire_global_lock (int ) ;
 int acpi_ex_insert_into_field (union acpi_operand_object*,void*,int) ;
 int acpi_ex_release_global_lock (int ) ;
 int acpi_ex_write_gpio (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ex_write_serial_bus (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ut_get_type_name (int) ;
 int ex_write_data_to_field ;
 int memcpy (scalar_t__,void*,int) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_write_data_to_field(union acpi_operand_object *source_desc,
       union acpi_operand_object *obj_desc,
       union acpi_operand_object **result_desc)
{
 acpi_status status;
 u32 buffer_length;
 u32 data_length;
 void *buffer;

 ACPI_FUNCTION_TRACE_PTR(ex_write_data_to_field, obj_desc);



 if (!source_desc || !obj_desc) {
  return_ACPI_STATUS(AE_AML_NO_OPERAND);
 }

 if (obj_desc->common.type == ACPI_TYPE_BUFFER_FIELD) {




  if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
   status = acpi_ds_get_buffer_field_arguments(obj_desc);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }
 } else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
     (obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_GPIO)) {



  status = acpi_ex_write_gpio(source_desc, obj_desc, result_desc);
  return_ACPI_STATUS(status);
 } else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
     (obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_SMBUS
      || obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_GSBUS
      || obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_IPMI)) {



  status =
      acpi_ex_write_serial_bus(source_desc, obj_desc,
          result_desc);
  return_ACPI_STATUS(status);
 } else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
     (obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_PLATFORM_COMM)) {







  data_length =
      (acpi_size)ACPI_ROUND_BITS_UP_TO_BYTES(obj_desc->field.
          bit_length);
  memcpy(obj_desc->field.region_obj->field.internal_pcc_buffer +
         obj_desc->field.base_byte_offset,
         source_desc->buffer.pointer, data_length);

  if ((obj_desc->field.region_obj->region.address ==
       PCC_MASTER_SUBSPACE
       && MASTER_SUBSPACE_COMMAND(obj_desc->field.
      base_byte_offset))
      || GENERIC_SUBSPACE_COMMAND(obj_desc->field.
      base_byte_offset)) {



   ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
       "PCC COMD field has been written. Invoking PCC handler now.\n"));

   status =
       acpi_ex_access_region(obj_desc, 0,
        (u64 *)obj_desc->field.
        region_obj->field.
        internal_pcc_buffer,
        ACPI_WRITE);
   return_ACPI_STATUS(status);
  }
  return (AE_OK);
 }



 switch (source_desc->common.type) {
 case 129:

  buffer = &source_desc->integer.value;
  buffer_length = sizeof(source_desc->integer.value);
  break;

 case 130:

  buffer = source_desc->buffer.pointer;
  buffer_length = source_desc->buffer.length;
  break;

 case 128:

  buffer = source_desc->string.pointer;
  buffer_length = source_desc->string.length;
  break;

 default:
  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\n",
     source_desc,
     acpi_ut_get_type_name(source_desc->common.type),
     source_desc->common.type, buffer, buffer_length));

 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\n",
     obj_desc,
     acpi_ut_get_type_name(obj_desc->common.type),
     obj_desc->common.type,
     obj_desc->common_field.bit_length,
     obj_desc->common_field.start_field_bit_offset,
     obj_desc->common_field.base_byte_offset));



 acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);



 status = acpi_ex_insert_into_field(obj_desc, buffer, buffer_length);
 acpi_ex_release_global_lock(obj_desc->common_field.field_flags);
 return_ACPI_STATUS(status);
}
