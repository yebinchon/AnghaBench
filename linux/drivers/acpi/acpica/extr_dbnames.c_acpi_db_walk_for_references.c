
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int u32 ;
typedef void acpi_namespace_node ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int AE_OK ;
 union acpi_operand_object* acpi_ns_get_attached_object (void*) ;
 int acpi_os_printf (char*,void*,...) ;
 int acpi_ut_get_node_name (void*) ;

__attribute__((used)) static acpi_status
acpi_db_walk_for_references(acpi_handle obj_handle,
       u32 nesting_level,
       void *context, void **return_value)
{
 union acpi_operand_object *obj_desc =
     (union acpi_operand_object *)context;
 struct acpi_namespace_node *node =
     (struct acpi_namespace_node *)obj_handle;



 if (node == (void *)obj_desc) {
  acpi_os_printf("Object is a Node [%4.4s]\n",
          acpi_ut_get_node_name(node));
 }



 if (acpi_ns_get_attached_object(node) == obj_desc) {
  acpi_os_printf("Reference at Node->Object %p [%4.4s]\n",
          node, acpi_ut_get_node_name(node));
 }

 return (AE_OK);
}
