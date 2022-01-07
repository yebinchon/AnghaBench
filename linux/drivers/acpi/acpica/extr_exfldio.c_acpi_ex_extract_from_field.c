
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bit_length; int access_byte_width; int start_field_bit_offset; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_INTEGER_BIT_SIZE ;
 int ACPI_MASK_BITS_ABOVE (int) ;
 int ACPI_MIN (int,int) ;
 int ACPI_MUL_8 (int) ;
 int ACPI_READ ;
 int ACPI_ROUND_BITS_UP_TO_BYTES (int) ;
 int ACPI_ROUND_UP_TO (int,int) ;
 int AE_BUFFER_OVERFLOW ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ex_field_datum_io (union acpi_operand_object*,int,int*,int ) ;
 int ex_extract_from_field ;
 int memcpy (char*,int*,int) ;
 int memset (void*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_extract_from_field(union acpi_operand_object *obj_desc,
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

 ACPI_FUNCTION_TRACE(ex_extract_from_field);



 if (buffer_length <
     ACPI_ROUND_BITS_UP_TO_BYTES(obj_desc->common_field.bit_length)) {
  ACPI_ERROR((AE_INFO,
       "Field size %u (bits) is too large for buffer (%u)",
       obj_desc->common_field.bit_length, buffer_length));

  return_ACPI_STATUS(AE_BUFFER_OVERFLOW);
 }

 memset(buffer, 0, buffer_length);
 access_bit_width = ACPI_MUL_8(obj_desc->common_field.access_byte_width);



 if ((obj_desc->common_field.start_field_bit_offset == 0) &&
     (obj_desc->common_field.bit_length == access_bit_width)) {
  if (buffer_length >= sizeof(u64)) {
   status =
       acpi_ex_field_datum_io(obj_desc, 0, buffer,
         ACPI_READ);
  } else {


   status =
       acpi_ex_field_datum_io(obj_desc, 0, &raw_datum,
         ACPI_READ);
   memcpy(buffer, &raw_datum, buffer_length);
  }

  return_ACPI_STATUS(status);
 }





 if (obj_desc->common_field.access_byte_width > sizeof(u64)) {
  obj_desc->common_field.access_byte_width = sizeof(u64);
  access_bit_width = sizeof(u64) * 8;
 }



 datum_count =
     ACPI_ROUND_UP_TO(obj_desc->common_field.bit_length,
        access_bit_width);

 field_datum_count = ACPI_ROUND_UP_TO(obj_desc->common_field.bit_length +
          obj_desc->common_field.
          start_field_bit_offset,
          access_bit_width);



 status =
     acpi_ex_field_datum_io(obj_desc, field_offset, &raw_datum,
       ACPI_READ);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 merged_datum =
     raw_datum >> obj_desc->common_field.start_field_bit_offset;



 for (i = 1; i < field_datum_count; i++) {



  field_offset += obj_desc->common_field.access_byte_width;
  status =
      acpi_ex_field_datum_io(obj_desc, field_offset, &raw_datum,
        ACPI_READ);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
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



  memcpy(((char *)buffer) + buffer_offset, &merged_datum,
         ACPI_MIN(obj_desc->common_field.access_byte_width,
    buffer_length - buffer_offset));

  buffer_offset += obj_desc->common_field.access_byte_width;
  merged_datum =
      raw_datum >> obj_desc->common_field.start_field_bit_offset;
 }



 buffer_tail_bits = obj_desc->common_field.bit_length % access_bit_width;
 if (buffer_tail_bits) {
  merged_datum &= ACPI_MASK_BITS_ABOVE(buffer_tail_bits);
 }



 memcpy(((char *)buffer) + buffer_offset, &merged_datum,
        ACPI_MIN(obj_desc->common_field.access_byte_width,
   buffer_length - buffer_offset));

 return_ACPI_STATUS(AE_OK);
}
