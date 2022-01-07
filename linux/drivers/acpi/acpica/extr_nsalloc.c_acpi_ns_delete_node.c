
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; union acpi_operand_object* next_object; } ;
struct TYPE_4__ {int pointer; int (* handler ) (struct acpi_namespace_node*,int ) ;} ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ data; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
struct TYPE_6__ {int total_freed; } ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_MEM_TRACKING (int ) ;
 scalar_t__ ACPI_TYPE_LOCAL_DATA ;
 int acpi_gbl_current_node_count ;
 int acpi_gbl_namespace_cache ;
 TYPE_3__* acpi_gbl_ns_node_list ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_ns_detach_object (struct acpi_namespace_node*) ;
 int acpi_os_release_object (int ,struct acpi_namespace_node*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_delete_node ;
 int return_VOID ;
 int stub1 (struct acpi_namespace_node*,int ) ;

void acpi_ns_delete_node(struct acpi_namespace_node *node)
{
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *next_desc;

 ACPI_FUNCTION_NAME(ns_delete_node);

 if (!node) {
  return_VOID;
 }



 acpi_ns_detach_object(node);







 obj_desc = node->object;
 while (obj_desc && (obj_desc->common.type == ACPI_TYPE_LOCAL_DATA)) {



  if (obj_desc->data.handler) {
   obj_desc->data.handler(node, obj_desc->data.pointer);
  }

  next_desc = obj_desc->common.next_object;
  acpi_ut_remove_reference(obj_desc);
  obj_desc = next_desc;
 }



 if (node == acpi_gbl_root_node) {
  return;
 }



 (void)acpi_os_release_object(acpi_gbl_namespace_cache, node);

 ACPI_MEM_TRACKING(acpi_gbl_ns_node_list->total_freed++);
 ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS, "Node %p, Remaining %X\n",
     node, acpi_gbl_current_node_count));
}
