
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ package; } ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {int node_flags; int full_pathname; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SORT_DESCENDING ;
 scalar_t__ ACPI_UINT32_MAX ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_check_sorted_list (struct acpi_evaluate_info*,union acpi_operand_object*,int ,int,int ,int ,char*) ;

__attribute__((used)) static acpi_status
acpi_ns_repair_PSS(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object **outer_elements;
 u32 outer_element_count;
 union acpi_operand_object **elements;
 union acpi_operand_object *obj_desc;
 u32 previous_value;
 acpi_status status;
 u32 i;







 status = acpi_ns_check_sorted_list(info, return_object, 0, 6, 0,
        ACPI_SORT_DESCENDING,
        "CpuFrequency");
 if (ACPI_FAILURE(status)) {
  return (status);
 }





 previous_value = ACPI_UINT32_MAX;
 outer_elements = return_object->package.elements;
 outer_element_count = return_object->package.count;

 for (i = 0; i < outer_element_count; i++) {
  elements = (*outer_elements)->package.elements;
  obj_desc = elements[1];

  if ((u32)obj_desc->integer.value > previous_value) {
   ACPI_WARN_PREDEFINED((AE_INFO,
           info->full_pathname,
           info->node_flags,
           "SubPackage[%u,%u] - suspicious power dissipation values",
           i - 1, i));
  }

  previous_value = (u32) obj_desc->integer.value;
  outer_elements++;
 }

 return (AE_OK);
}
