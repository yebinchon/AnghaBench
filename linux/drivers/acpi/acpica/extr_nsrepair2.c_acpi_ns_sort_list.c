
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ package; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ ACPI_SORT_ASCENDING ;
 scalar_t__ ACPI_SORT_DESCENDING ;

__attribute__((used)) static void
acpi_ns_sort_list(union acpi_operand_object **elements,
    u32 count, u32 index, u8 sort_direction)
{
 union acpi_operand_object *obj_desc1;
 union acpi_operand_object *obj_desc2;
 union acpi_operand_object *temp_obj;
 u32 i;
 u32 j;



 for (i = 1; i < count; i++) {
  for (j = (count - 1); j >= i; j--) {
   obj_desc1 = elements[j - 1]->package.elements[index];
   obj_desc2 = elements[j]->package.elements[index];

   if (((sort_direction == ACPI_SORT_ASCENDING) &&
        (obj_desc1->integer.value >
         obj_desc2->integer.value))
       || ((sort_direction == ACPI_SORT_DESCENDING)
    && (obj_desc1->integer.value <
        obj_desc2->integer.value))) {
    temp_obj = elements[j - 1];
    elements[j - 1] = elements[j];
    elements[j] = temp_obj;
   }
  }
 }
}
