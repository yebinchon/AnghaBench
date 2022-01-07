
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; union acpi_operand_object* next_object; } ;
struct TYPE_4__ {scalar_t__ handler; } ;
union acpi_operand_object {TYPE_1__ common; TYPE_2__ data; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_handler ;


 scalar_t__ ACPI_TYPE_LOCAL_DATA ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;

acpi_status
acpi_ns_detach_data(struct acpi_namespace_node *node,
      acpi_object_handler handler)
{
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *prev_obj_desc;

 prev_obj_desc = ((void*)0);
 obj_desc = node->object;
 while (obj_desc) {
  if ((obj_desc->common.type == ACPI_TYPE_LOCAL_DATA) &&
      (obj_desc->data.handler == handler)) {
   if (prev_obj_desc) {
    prev_obj_desc->common.next_object =
        obj_desc->common.next_object;
   } else {
    node->object = obj_desc->common.next_object;
   }

   acpi_ut_remove_reference(obj_desc);
   return (AE_OK);
  }

  prev_obj_desc = obj_desc;
  obj_desc = obj_desc->common.next_object;
 }

 return (AE_NOT_FOUND);
}
