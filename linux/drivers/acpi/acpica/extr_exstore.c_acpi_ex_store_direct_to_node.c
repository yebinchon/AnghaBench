
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 int acpi_ut_copy_iobject_to_iobject (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_store_direct_to_node ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_store_direct_to_node(union acpi_operand_object *source_desc,
        struct acpi_namespace_node *node,
        struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_operand_object *new_desc;

 ACPI_FUNCTION_TRACE(ex_store_direct_to_node);

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Storing [%s] (%p) directly into node [%s] (%p)"
     " with no implicit conversion\n",
     acpi_ut_get_object_type_name(source_desc),
     source_desc, acpi_ut_get_type_name(node->type),
     node));



 status =
     acpi_ut_copy_iobject_to_iobject(source_desc, &new_desc, walk_state);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_ns_attach_object(node, new_desc, new_desc->common.type);
 acpi_ut_remove_reference(new_desc);
 return_ACPI_STATUS(status);
}
