
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; union acpi_operand_object* next_object; } ;
struct TYPE_5__ {int space_id; } ;
struct TYPE_4__ {int aml_start; } ;
union acpi_operand_object {TYPE_3__ common; TYPE_2__ region; TYPE_1__ method; } ;
struct acpi_namespace_node {int flags; int type; union acpi_operand_object* object; } ;


 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_FREE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_LOCAL_DATA ;
 scalar_t__ ACPI_TYPE_METHOD ;
 scalar_t__ ACPI_TYPE_REGION ;
 int ANOBJ_ALLOCATED_BUFFER ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_remove_address_range (int ,struct acpi_namespace_node*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_detach_object ;
 int return_VOID ;

void acpi_ns_detach_object(struct acpi_namespace_node *node)
{
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE(ns_detach_object);

 obj_desc = node->object;

 if (!obj_desc || (obj_desc->common.type == ACPI_TYPE_LOCAL_DATA)) {
  return_VOID;
 }

 if (node->flags & ANOBJ_ALLOCATED_BUFFER) {



  if (obj_desc->common.type == ACPI_TYPE_METHOD) {
   ACPI_FREE(obj_desc->method.aml_start);
  }
 }

 if (obj_desc->common.type == ACPI_TYPE_REGION) {
  acpi_ut_remove_address_range(obj_desc->region.space_id, node);
 }



 node->object = ((void*)0);
 if (ACPI_GET_DESCRIPTOR_TYPE(obj_desc) == ACPI_DESC_TYPE_OPERAND) {



  node->object = obj_desc->common.next_object;



  if (node->object &&
      (node->object->common.type != ACPI_TYPE_LOCAL_DATA)) {
   node->object = node->object->common.next_object;
  }





  if (obj_desc->common.next_object &&
      ((obj_desc->common.next_object)->common.type ==
       ACPI_TYPE_LOCAL_DATA)) {
   obj_desc->common.next_object = ((void*)0);
  }
 }



 node->type = ACPI_TYPE_ANY;

 ACPI_DEBUG_PRINT((ACPI_DB_NAMES, "Node %p [%4.4s] Object %p\n",
     node, acpi_ut_get_node_name(node), obj_desc));



 acpi_ut_remove_reference(obj_desc);
 return_VOID;
}
