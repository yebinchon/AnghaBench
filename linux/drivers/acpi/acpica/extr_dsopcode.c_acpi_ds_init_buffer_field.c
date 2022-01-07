
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; union acpi_operand_object* buffer_obj; } ;
struct TYPE_7__ {scalar_t__ type; int reference_count; } ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_5__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_4__ buffer_field; TYPE_3__ common; TYPE_2__ buffer; TYPE_1__ integer; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_BIOS_ERROR (int ) ;
 int ACPI_BIOS_EXCEPTION (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_BUFFER_LIMIT ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;






 int AML_FIELD_ACCESS_BYTE ;
 int AML_FIELD_ACCESS_DWORD ;
 int AML_FIELD_ACCESS_QWORD ;
 int AML_FIELD_ACCESS_WORD ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ex_prep_common_field_object (union acpi_operand_object*,int ,int ,int,int) ;
 int acpi_ps_get_opcode_name (int) ;
 int acpi_ut_get_descriptor_name (union acpi_operand_object*) ;
 int acpi_ut_get_node_name (union acpi_operand_object*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_init_buffer_field ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ds_init_buffer_field(u16 aml_opcode,
     union acpi_operand_object *obj_desc,
     union acpi_operand_object *buffer_desc,
     union acpi_operand_object *offset_desc,
     union acpi_operand_object *length_desc,
     union acpi_operand_object *result_desc)
{
 u32 offset;
 u32 bit_offset;
 u32 bit_count;
 u8 field_flags;
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ds_init_buffer_field, obj_desc);



 if (buffer_desc->common.type != ACPI_TYPE_BUFFER) {
  ACPI_ERROR((AE_INFO,
       "Target of Create Field is not a Buffer object - %s",
       acpi_ut_get_object_type_name(buffer_desc)));

  status = AE_AML_OPERAND_TYPE;
  goto cleanup;
 }






 if (ACPI_GET_DESCRIPTOR_TYPE(result_desc) != ACPI_DESC_TYPE_NAMED) {
  ACPI_ERROR((AE_INFO,
       "(%s) destination not a NS Node [%s]",
       acpi_ps_get_opcode_name(aml_opcode),
       acpi_ut_get_descriptor_name(result_desc)));

  status = AE_AML_OPERAND_TYPE;
  goto cleanup;
 }

 offset = (u32) offset_desc->integer.value;




 switch (aml_opcode) {
 case 130:



  field_flags = AML_FIELD_ACCESS_BYTE;
  bit_offset = offset;
  bit_count = (u32) length_desc->integer.value;



  if (bit_count == 0) {
   ACPI_BIOS_ERROR((AE_INFO,
      "Attempt to CreateField of length zero"));
   status = AE_AML_OPERAND_VALUE;
   goto cleanup;
  }
  break;

 case 133:



  bit_offset = offset;
  bit_count = 1;
  field_flags = AML_FIELD_ACCESS_BYTE;
  break;

 case 132:



  bit_offset = 8 * offset;
  bit_count = 8;
  field_flags = AML_FIELD_ACCESS_BYTE;
  break;

 case 128:



  bit_offset = 8 * offset;
  bit_count = 16;
  field_flags = AML_FIELD_ACCESS_WORD;
  break;

 case 131:



  bit_offset = 8 * offset;
  bit_count = 32;
  field_flags = AML_FIELD_ACCESS_DWORD;
  break;

 case 129:



  bit_offset = 8 * offset;
  bit_count = 64;
  field_flags = AML_FIELD_ACCESS_QWORD;
  break;

 default:

  ACPI_ERROR((AE_INFO,
       "Unknown field creation opcode 0x%02X",
       aml_opcode));
  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }



 if ((bit_offset + bit_count) > (8 * (u32)buffer_desc->buffer.length)) {
  status = AE_AML_BUFFER_LIMIT;
  ACPI_BIOS_EXCEPTION((AE_INFO, status,
         "Field [%4.4s] at bit offset/length %u/%u "
         "exceeds size of target Buffer (%u bits)",
         acpi_ut_get_node_name(result_desc),
         bit_offset, bit_count,
         8 * (u32)buffer_desc->buffer.length));
  goto cleanup;
 }






 status =
     acpi_ex_prep_common_field_object(obj_desc, field_flags, 0,
          bit_offset, bit_count);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }

 obj_desc->buffer_field.buffer_obj = buffer_desc;



 buffer_desc->common.reference_count = (u16)
     (buffer_desc->common.reference_count +
      obj_desc->common.reference_count);

cleanup:



 acpi_ut_remove_reference(offset_desc);
 acpi_ut_remove_reference(buffer_desc);

 if (aml_opcode == 130) {
  acpi_ut_remove_reference(length_desc);
 }



 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(result_desc);
 } else {


  obj_desc->buffer_field.flags |= AOPOBJ_DATA_VALID;
 }

 return_ACPI_STATUS(status);
}
