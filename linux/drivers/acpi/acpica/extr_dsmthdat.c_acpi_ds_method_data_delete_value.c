
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int * object; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int acpi_ds_method_data_get_node (int ,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_method_data_delete_value ;
 int return_VOID ;

__attribute__((used)) static void
acpi_ds_method_data_delete_value(u8 type,
     u32 index, struct acpi_walk_state *walk_state)
{
 acpi_status status;
 struct acpi_namespace_node *node;
 union acpi_operand_object *object;

 ACPI_FUNCTION_TRACE(ds_method_data_delete_value);



 status = acpi_ds_method_data_get_node(type, index, walk_state, &node);
 if (ACPI_FAILURE(status)) {
  return_VOID;
 }



 object = acpi_ns_get_attached_object(node);






 node->object = ((void*)0);

 if ((object) &&
     (ACPI_GET_DESCRIPTOR_TYPE(object) == ACPI_DESC_TYPE_OPERAND)) {





  acpi_ut_remove_reference(object);
 }

 return_VOID;
}
