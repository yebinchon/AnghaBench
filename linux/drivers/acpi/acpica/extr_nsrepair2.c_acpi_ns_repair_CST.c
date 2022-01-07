
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ package; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_evaluate_info {int node_flags; int full_pathname; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_SORT_ASCENDING ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_OK ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_ns_check_sorted_list (struct acpi_evaluate_info*,union acpi_operand_object*,int,int,int,int ,char*) ;
 int acpi_ns_remove_element (union acpi_operand_object*,int) ;
 int ns_repair_CST ;

__attribute__((used)) static acpi_status
acpi_ns_repair_CST(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object **outer_elements;
 u32 outer_element_count;
 union acpi_operand_object *obj_desc;
 acpi_status status;
 u8 removing;
 u32 i;

 ACPI_FUNCTION_NAME(ns_repair_CST);




 outer_element_count = return_object->package.count - 1;
 i = 0;
 while (i < outer_element_count) {
  outer_elements = &return_object->package.elements[i + 1];
  removing = FALSE;

  if ((*outer_elements)->package.count == 0) {
   ACPI_WARN_PREDEFINED((AE_INFO,
           info->full_pathname,
           info->node_flags,
           "SubPackage[%u] - removing entry due to zero count",
           i));
   removing = TRUE;
   goto remove_element;
  }

  obj_desc = (*outer_elements)->package.elements[1];
  if ((u32)obj_desc->integer.value == 0) {
   ACPI_WARN_PREDEFINED((AE_INFO,
           info->full_pathname,
           info->node_flags,
           "SubPackage[%u] - removing entry due to invalid Type(0)",
           i));
   removing = TRUE;
  }

remove_element:
  if (removing) {
   acpi_ns_remove_element(return_object, i + 1);
   outer_element_count--;
  } else {
   i++;
  }
 }



 obj_desc = return_object->package.elements[0];
 obj_desc->integer.value = outer_element_count;





 status = acpi_ns_check_sorted_list(info, return_object, 1, 4, 1,
        ACPI_SORT_ASCENDING, "C-State Type");
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 return (AE_OK);
}
