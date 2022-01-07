
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_1__ package; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {int full_pathname; } ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ns_remove_null_elements ;

void
acpi_ns_remove_null_elements(struct acpi_evaluate_info *info,
        u8 package_type,
        union acpi_operand_object *obj_desc)
{
 union acpi_operand_object **source;
 union acpi_operand_object **dest;
 u32 count;
 u32 new_count;
 u32 i;

 ACPI_FUNCTION_NAME(ns_remove_null_elements);






 switch (package_type) {
 case 136:
 case 135:
 case 134:
 case 130:
 case 133:
 case 131:
 case 129:
 case 132:
  break;

 default:
 case 128:
 case 138:
 case 137:
  return;
 }

 count = obj_desc->package.count;
 new_count = count;

 source = obj_desc->package.elements;
 dest = source;



 for (i = 0; i < count; i++) {
  if (!*source) {
   new_count--;
  } else {
   *dest = *source;
   dest++;
  }

  source++;
 }



 if (new_count < count) {
  ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
      "%s: Found and removed %u NULL elements\n",
      info->full_pathname, (count - new_count)));



  *dest = ((void*)0);
  obj_desc->package.count = new_count;
 }
}
