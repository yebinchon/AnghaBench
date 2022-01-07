
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * pointer; } ;
struct TYPE_6__ {int pointer; } ;
struct TYPE_5__ {int type; } ;
union acpi_operand_object {TYPE_1__ buffer; TYPE_3__ string; TYPE_2__ common; } ;
typedef size_t u64 ;
typedef size_t u32 ;
typedef int acpi_status ;


 int ACPI_FAILURE (int ) ;


 int AE_AML_OPERAND_TYPE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_integer_object (size_t) ;
 int acpi_ut_strtoul64 (int ,size_t*) ;

acpi_status
acpi_ns_convert_to_integer(union acpi_operand_object *original_object,
      union acpi_operand_object **return_object)
{
 union acpi_operand_object *new_object;
 acpi_status status;
 u64 value = 0;
 u32 i;

 switch (original_object->common.type) {
 case 128:



  status =
      acpi_ut_strtoul64(original_object->string.pointer, &value);
  if (ACPI_FAILURE(status)) {
   return (status);
  }
  break;

 case 129:



  if (original_object->buffer.length > 8) {
   return (AE_AML_OPERAND_TYPE);
  }



  for (i = 0; i < original_object->buffer.length; i++) {
   value |= ((u64)
      original_object->buffer.pointer[i] << (i *
          8));
  }
  break;

 default:

  return (AE_AML_OPERAND_TYPE);
 }

 new_object = acpi_ut_create_integer_object(value);
 if (!new_object) {
  return (AE_NO_MEMORY);
 }

 *return_object = new_object;
 return (AE_OK);
}
