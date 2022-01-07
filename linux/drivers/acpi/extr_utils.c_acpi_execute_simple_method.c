
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
typedef int u64 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

acpi_status acpi_execute_simple_method(acpi_handle handle, char *method,
           u64 arg)
{
 union acpi_object obj = { .type = ACPI_TYPE_INTEGER };
 struct acpi_object_list arg_list = { .count = 1, .pointer = &obj, };

 obj.integer.value = arg;

 return acpi_evaluate_object(handle, method, &arg_list, ((void*)0));
}
