
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ package; } ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {int node_flags; int full_pathname; int return_flags; } ;
typedef int acpi_status ;


 int ACPI_OBJECT_REPAIRED ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_OK ;

__attribute__((used)) static acpi_status
acpi_ns_repair_PRT(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *package_object = *return_object_ptr;
 union acpi_operand_object **top_object_list;
 union acpi_operand_object **sub_object_list;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *sub_package;
 u32 element_count;
 u32 index;



 top_object_list = package_object->package.elements;
 element_count = package_object->package.count;



 for (index = 0; index < element_count; index++, top_object_list++) {
  sub_package = *top_object_list;
  sub_object_list = sub_package->package.elements;



  if (sub_package->package.count < 4) {
   continue;
  }







  obj_desc = sub_object_list[3];
  if (!obj_desc || (obj_desc->common.type != ACPI_TYPE_INTEGER)) {
   sub_object_list[3] = sub_object_list[2];
   sub_object_list[2] = obj_desc;
   info->return_flags |= ACPI_OBJECT_REPAIRED;

   ACPI_WARN_PREDEFINED((AE_INFO,
           info->full_pathname,
           info->node_flags,
           "PRT[%X]: Fixed reversed SourceName and SourceIndex",
           index));
  }
 }

 return (AE_OK);
}
