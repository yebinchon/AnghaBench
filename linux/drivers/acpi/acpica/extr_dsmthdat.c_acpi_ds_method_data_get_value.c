
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;


 int AE_AML_INTERNAL ;
 int AE_AML_UNINITIALIZED_ARG ;
 int AE_AML_UNINITIALIZED_LOCAL ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ds_method_data_get_node (int,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 scalar_t__ acpi_gbl_enable_interpreter_slack ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ut_create_integer_object (int ) ;
 int ds_method_data_get_value ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_method_data_get_value(u8 type,
         u32 index,
         struct acpi_walk_state *walk_state,
         union acpi_operand_object **dest_desc)
{
 acpi_status status;
 struct acpi_namespace_node *node;
 union acpi_operand_object *object;

 ACPI_FUNCTION_TRACE(ds_method_data_get_value);



 if (!dest_desc) {
  ACPI_ERROR((AE_INFO, "Null object descriptor pointer"));
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status = acpi_ds_method_data_get_node(type, index, walk_state, &node);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 object = node->object;



 if (!object) {
  if (acpi_gbl_enable_interpreter_slack) {
   object = acpi_ut_create_integer_object((u64) 0);
   if (!object) {
    return_ACPI_STATUS(AE_NO_MEMORY);
   }

   node->object = object;
  }



  else
   switch (type) {
   case 129:

    ACPI_ERROR((AE_INFO,
         "Uninitialized Arg[%u] at node %p",
         index, node));

    return_ACPI_STATUS(AE_AML_UNINITIALIZED_ARG);

   case 128:




    return_ACPI_STATUS(AE_AML_UNINITIALIZED_LOCAL);

   default:

    ACPI_ERROR((AE_INFO,
         "Not a Arg/Local opcode: 0x%X",
         type));
    return_ACPI_STATUS(AE_AML_INTERNAL);
   }
 }





 *dest_desc = object;
 acpi_ut_add_reference(object);

 return_ACPI_STATUS(AE_OK);
}
