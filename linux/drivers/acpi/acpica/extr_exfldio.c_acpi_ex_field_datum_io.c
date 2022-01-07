
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int access_byte_width; } ;
struct TYPE_13__ {int type; int flags; } ;
struct TYPE_12__ {scalar_t__ value; int data_obj; int index_obj; } ;
struct TYPE_11__ {scalar_t__ value; int bank_obj; } ;
struct TYPE_10__ {scalar_t__ base_byte_offset; TYPE_2__* buffer_obj; } ;
union acpi_operand_object {TYPE_7__ common_field; TYPE_6__ common; TYPE_5__ index_field; TYPE_4__ bank_field; TYPE_3__ buffer_field; } ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int field_datum_byte_offset ;
typedef int acpi_status ;
struct TYPE_8__ {scalar_t__ pointer; } ;
struct TYPE_9__ {TYPE_1__ buffer; } ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 scalar_t__ ACPI_READ ;
 scalar_t__ ACPI_SUCCESS (int ) ;




 int AE_AML_INTERNAL ;
 int AE_AML_REGISTER_LIMIT ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_get_buffer_field_arguments (union acpi_operand_object*) ;
 int acpi_ex_access_region (union acpi_operand_object*,scalar_t__,scalar_t__*,scalar_t__) ;
 int acpi_ex_extract_from_field (int ,scalar_t__*,int) ;
 int acpi_ex_insert_into_field (int ,scalar_t__*,int) ;
 int acpi_ex_register_overflow (int ,scalar_t__) ;
 int ex_field_datum_io ;
 int memcpy (scalar_t__,scalar_t__*,int ) ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
         u32 field_datum_byte_offset, u64 *value, u32 read_write)
{
 acpi_status status;
 u64 local_value;

 ACPI_FUNCTION_TRACE_U32(ex_field_datum_io, field_datum_byte_offset);

 if (read_write == ACPI_READ) {
  if (!value) {
   local_value = 0;


   value = &local_value;
  }



  *value = 0;
 }
 switch (obj_desc->common.type) {
 case 131:




  if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
   status = acpi_ds_get_buffer_field_arguments(obj_desc);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }

  if (read_write == ACPI_READ) {




   memcpy(value,
          (obj_desc->buffer_field.buffer_obj)->buffer.
          pointer +
          obj_desc->buffer_field.base_byte_offset +
          field_datum_byte_offset,
          obj_desc->common_field.access_byte_width);
  } else {




   memcpy((obj_desc->buffer_field.buffer_obj)->buffer.
          pointer +
          obj_desc->buffer_field.base_byte_offset +
          field_datum_byte_offset, value,
          obj_desc->common_field.access_byte_width);
  }

  status = AE_OK;
  break;

 case 130:




  if (acpi_ex_register_overflow(obj_desc->bank_field.bank_obj,
           (u64) obj_desc->bank_field.
           value)) {
   return_ACPI_STATUS(AE_AML_REGISTER_LIMIT);
  }





  status =
      acpi_ex_insert_into_field(obj_desc->bank_field.bank_obj,
           &obj_desc->bank_field.value,
           sizeof(obj_desc->bank_field.
           value));
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 case 128:




  status =
      acpi_ex_access_region(obj_desc, field_datum_byte_offset,
       value, read_write);
  break;

 case 129:




  if (acpi_ex_register_overflow(obj_desc->index_field.index_obj,
           (u64) obj_desc->index_field.
           value)) {
   return_ACPI_STATUS(AE_AML_REGISTER_LIMIT);
  }



  field_datum_byte_offset += obj_desc->index_field.value;

  ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
      "Write to Index Register: Value %8.8X\n",
      field_datum_byte_offset));

  status =
      acpi_ex_insert_into_field(obj_desc->index_field.index_obj,
           &field_datum_byte_offset,
           sizeof(field_datum_byte_offset));
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  if (read_write == ACPI_READ) {



   ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
       "Read from Data Register\n"));

   status =
       acpi_ex_extract_from_field(obj_desc->index_field.
             data_obj, value,
             sizeof(u64));
  } else {


   ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
       "Write to Data Register: Value %8.8X%8.8X\n",
       ACPI_FORMAT_UINT64(*value)));

   status =
       acpi_ex_insert_into_field(obj_desc->index_field.
            data_obj, value,
            sizeof(u64));
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Wrong object type in field I/O %u",
       obj_desc->common.type));
  status = AE_AML_INTERNAL;
  break;
 }

 if (ACPI_SUCCESS(status)) {
  if (read_write == ACPI_READ) {
   ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
       "Value Read %8.8X%8.8X, Width %u\n",
       ACPI_FORMAT_UINT64(*value),
       obj_desc->common_field.
       access_byte_width));
  } else {
   ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
       "Value Written %8.8X%8.8X, Width %u\n",
       ACPI_FORMAT_UINT64(*value),
       obj_desc->common_field.
       access_byte_width));
  }
 }

 return_ACPI_STATUS(status);
}
