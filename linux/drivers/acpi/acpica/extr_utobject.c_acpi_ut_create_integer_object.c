
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef int u64 ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_INTEGER ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int return_PTR (union acpi_operand_object*) ;
 int ut_create_integer_object ;

union acpi_operand_object *acpi_ut_create_integer_object(u64 initial_value)
{
 union acpi_operand_object *integer_desc;

 ACPI_FUNCTION_TRACE(ut_create_integer_object);



 integer_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
 if (!integer_desc) {
  return_PTR(((void*)0));
 }

 integer_desc->integer.value = initial_value;
 return_PTR(integer_desc);
}
