
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_INFO ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_evaluate_object (int *,char*,struct acpi_object_list*,int *) ;
 int hw_execute_sleep_method ;
 int return_VOID ;

void acpi_hw_execute_sleep_method(char *method_pathname, u32 integer_argument)
{
 struct acpi_object_list arg_list;
 union acpi_object arg;
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_execute_sleep_method);



 arg_list.count = 1;
 arg_list.pointer = &arg;
 arg.type = ACPI_TYPE_INTEGER;
 arg.integer.value = (u64)integer_argument;

 status = acpi_evaluate_object(((void*)0), method_pathname, &arg_list, ((void*)0));
 if (ACPI_FAILURE(status) && status != AE_NOT_FOUND) {
  ACPI_EXCEPTION((AE_INFO, status, "While executing method %s",
    method_pathname));
 }

 return_VOID;
}
