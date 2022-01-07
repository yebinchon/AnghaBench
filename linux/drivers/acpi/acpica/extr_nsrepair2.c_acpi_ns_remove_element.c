
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_1__ package; } ;
typedef scalar_t__ u32 ;


 int ACPI_FUNCTION_NAME (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_remove_element ;

__attribute__((used)) static void
acpi_ns_remove_element(union acpi_operand_object *obj_desc, u32 index)
{
 union acpi_operand_object **source;
 union acpi_operand_object **dest;
 u32 count;
 u32 new_count;
 u32 i;

 ACPI_FUNCTION_NAME(ns_remove_element);

 count = obj_desc->package.count;
 new_count = count - 1;

 source = obj_desc->package.elements;
 dest = source;



 for (i = 0; i < count; i++) {
  if (i == index) {
   acpi_ut_remove_reference(*source);
   acpi_ut_remove_reference(*source);
  } else {
   *dest = *source;
   dest++;
  }

  source++;
 }



 *dest = ((void*)0);
 obj_desc->package.count = new_count;
}
