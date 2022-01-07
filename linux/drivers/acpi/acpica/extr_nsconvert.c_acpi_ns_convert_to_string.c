
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t length; int * pointer; } ;
struct TYPE_6__ {int pointer; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_8__ {int type; } ;
union acpi_operand_object {TYPE_3__ buffer; TYPE_2__ string; TYPE_1__ integer; TYPE_4__ common; } ;
typedef int acpi_status ;
typedef size_t acpi_size ;


 int ACPI_FAILURE (int ) ;
 int ACPI_IMPLICIT_CONVERT_HEX ;


 int AE_AML_OPERAND_TYPE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ex_convert_to_string (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 union acpi_operand_object* acpi_ut_create_string_object (size_t) ;
 int memcpy (int ,int *,size_t) ;

acpi_status
acpi_ns_convert_to_string(union acpi_operand_object *original_object,
     union acpi_operand_object **return_object)
{
 union acpi_operand_object *new_object;
 acpi_size length;
 acpi_status status;

 switch (original_object->common.type) {
 case 128:





  if (original_object->integer.value == 0) {



   new_object = acpi_ut_create_string_object(0);
   if (!new_object) {
    return (AE_NO_MEMORY);
   }
  } else {
   status = acpi_ex_convert_to_string(original_object,
          &new_object,
          ACPI_IMPLICIT_CONVERT_HEX);
   if (ACPI_FAILURE(status)) {
    return (status);
   }
  }
  break;

 case 129:






  length = 0;
  while ((length < original_object->buffer.length) &&
         (original_object->buffer.pointer[length])) {
   length++;
  }



  new_object = acpi_ut_create_string_object(length);
  if (!new_object) {
   return (AE_NO_MEMORY);
  }





  memcpy(new_object->string.pointer,
         original_object->buffer.pointer, length);
  break;

 default:

  return (AE_AML_OPERAND_TYPE);
 }

 *return_object = new_object;
 return (AE_OK);
}
