
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
struct TYPE_7__ {scalar_t__ length; int * pointer; } ;
struct TYPE_6__ {char* pointer; scalar_t__ length; } ;
struct TYPE_5__ {int value; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ buffer; TYPE_2__ string; TYPE_1__ integer; } ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;
typedef int acpi_object_type ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_IMPLICIT_CONVERT_HEX ;
 int ACPI_MUL_2 (scalar_t__) ;



 int AE_AML_INTERNAL ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ex_convert_to_buffer (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ex_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_convert_to_object_type_string (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ex_convert_to_string (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 scalar_t__ acpi_gbl_integer_byte_width ;
 union acpi_operand_object* acpi_ut_create_buffer_object (scalar_t__) ;
 union acpi_operand_object* acpi_ut_create_string_object (scalar_t__) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_do_concatenate ;
 int memcpy (char*,int *,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

acpi_status
acpi_ex_do_concatenate(union acpi_operand_object *operand0,
         union acpi_operand_object *operand1,
         union acpi_operand_object **actual_return_desc,
         struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *local_operand0 = operand0;
 union acpi_operand_object *local_operand1 = operand1;
 union acpi_operand_object *temp_operand1 = ((void*)0);
 union acpi_operand_object *return_desc;
 char *buffer;
 acpi_object_type operand0_type;
 acpi_object_type operand1_type;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ex_do_concatenate);



 switch (operand0->common.type) {
 case 129:
 case 128:
 case 130:

  operand0_type = operand0->common.type;
  break;

 default:



  status =
      acpi_ex_convert_to_object_type_string(operand0,
         &local_operand0);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  operand0_type = 128;
  break;
 }



 switch (operand1->common.type) {
 case 129:
 case 128:
 case 130:

  operand1_type = operand1->common.type;
  break;

 default:



  status =
      acpi_ex_convert_to_object_type_string(operand1,
         &local_operand1);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  operand1_type = 128;
  break;
 }
 switch (operand0_type) {
 case 129:

  status =
      acpi_ex_convert_to_integer(local_operand1, &temp_operand1,
            ACPI_IMPLICIT_CONVERSION);
  break;

 case 130:

  status =
      acpi_ex_convert_to_buffer(local_operand1, &temp_operand1);
  break;

 case 128:

  switch (operand1_type) {
  case 129:
  case 128:
  case 130:



   status =
       acpi_ex_convert_to_string(local_operand1,
            &temp_operand1,
            ACPI_IMPLICIT_CONVERT_HEX);
   break;

  default:

   status = AE_OK;
   break;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Invalid object type: 0x%X",
       operand0->common.type));
  status = AE_AML_INTERNAL;
 }

 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }



 if ((local_operand1 != operand1) && (local_operand1 != temp_operand1)) {
  acpi_ut_remove_reference(local_operand1);
 }

 local_operand1 = temp_operand1;
 switch (operand0_type) {
 case 129:




  return_desc = acpi_ut_create_buffer_object((acpi_size)
          ACPI_MUL_2
          (acpi_gbl_integer_byte_width));
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }

  buffer = (char *)return_desc->buffer.pointer;



  memcpy(buffer, &operand0->integer.value,
         acpi_gbl_integer_byte_width);



  memcpy(buffer + acpi_gbl_integer_byte_width,
         &local_operand1->integer.value,
         acpi_gbl_integer_byte_width);
  break;

 case 128:



  return_desc = acpi_ut_create_string_object(((acpi_size)
           local_operand0->
           string.length +
           local_operand1->
           string.length));
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }

  buffer = return_desc->string.pointer;



  strcpy(buffer, local_operand0->string.pointer);
  strcat(buffer, local_operand1->string.pointer);
  break;

 case 130:



  return_desc = acpi_ut_create_buffer_object(((acpi_size)
           operand0->buffer.
           length +
           local_operand1->
           buffer.length));
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }

  buffer = (char *)return_desc->buffer.pointer;



  memcpy(buffer, operand0->buffer.pointer,
         operand0->buffer.length);
  memcpy(buffer + operand0->buffer.length,
         local_operand1->buffer.pointer,
         local_operand1->buffer.length);
  break;

 default:



  ACPI_ERROR((AE_INFO, "Invalid object type: 0x%X",
       operand0->common.type));
  status = AE_AML_INTERNAL;
  goto cleanup;
 }

 *actual_return_desc = return_desc;

cleanup:
 if (local_operand0 != operand0) {
  acpi_ut_remove_reference(local_operand0);
 }

 if (local_operand1 != operand1) {
  acpi_ut_remove_reference(local_operand1);
 }

 return_ACPI_STATUS(status);
}
