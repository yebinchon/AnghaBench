
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ length; int pointer; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_4__ {int type; } ;
union acpi_operand_object {TYPE_3__ buffer; TYPE_2__ integer; TYPE_1__ common; } ;
typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_IMPLICIT_CONVERT_HEX ;



 int AE_AML_INTERNAL ;
 int AE_INFO ;
 int AE_OK ;



 int FALSE ;
 int TRUE ;
 int acpi_ex_convert_to_buffer (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ex_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_convert_to_string (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_do_logical_op ;
 int memcmp (int ,int ,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_do_logical_op(u16 opcode,
        union acpi_operand_object *operand0,
        union acpi_operand_object *operand1, u8 * logical_result)
{
 union acpi_operand_object *local_operand1 = operand1;
 u64 integer0;
 u64 integer1;
 u32 length0;
 u32 length1;
 acpi_status status = AE_OK;
 u8 local_result = FALSE;
 int compare;

 ACPI_FUNCTION_TRACE(ex_do_logical_op);
 switch (operand0->common.type) {
 case 132:

  status = acpi_ex_convert_to_integer(operand1, &local_operand1,
          ACPI_IMPLICIT_CONVERSION);
  break;

 case 131:

  status =
      acpi_ex_convert_to_string(operand1, &local_operand1,
           ACPI_IMPLICIT_CONVERT_HEX);
  break;

 case 133:

  status = acpi_ex_convert_to_buffer(operand1, &local_operand1);
  break;

 default:

  ACPI_ERROR((AE_INFO,
       "Invalid object type for logical operator: %X",
       operand0->common.type));
  status = AE_AML_INTERNAL;
  break;
 }

 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }




 if (operand0->common.type == 132) {




  integer0 = operand0->integer.value;
  integer1 = local_operand1->integer.value;

  switch (opcode) {
  case 130:

   if (integer0 == integer1) {
    local_result = TRUE;
   }
   break;

  case 129:

   if (integer0 > integer1) {
    local_result = TRUE;
   }
   break;

  case 128:

   if (integer0 < integer1) {
    local_result = TRUE;
   }
   break;

  default:

   ACPI_ERROR((AE_INFO,
        "Invalid comparison opcode: %X", opcode));
   status = AE_AML_INTERNAL;
   break;
  }
 } else {






  length0 = operand0->buffer.length;
  length1 = local_operand1->buffer.length;



  compare = memcmp(operand0->buffer.pointer,
     local_operand1->buffer.pointer,
     (length0 > length1) ? length1 : length0);

  switch (opcode) {
  case 130:



   if ((length0 == length1) && (compare == 0)) {



    local_result = TRUE;
   }
   break;

  case 129:

   if (compare > 0) {
    local_result = TRUE;
    goto cleanup;
   }
   if (compare < 0) {
    goto cleanup;
   }



   if (length0 > length1) {
    local_result = TRUE;
   }
   break;

  case 128:

   if (compare > 0) {
    goto cleanup;
   }
   if (compare < 0) {
    local_result = TRUE;
    goto cleanup;
   }



   if (length0 < length1) {
    local_result = TRUE;
   }
   break;

  default:

   ACPI_ERROR((AE_INFO,
        "Invalid comparison opcode: %X", opcode));
   status = AE_AML_INTERNAL;
   break;
  }
 }

cleanup:



 if (local_operand1 != operand1) {
  acpi_ut_remove_reference(local_operand1);
 }



 *logical_result = local_result;
 return_ACPI_STATUS(status);
}
