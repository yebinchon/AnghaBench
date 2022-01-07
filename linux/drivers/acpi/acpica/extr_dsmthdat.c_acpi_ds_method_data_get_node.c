
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct acpi_walk_state {struct acpi_namespace_node* arguments; struct acpi_namespace_node* local_variables; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 size_t ACPI_METHOD_MAX_ARG ;
 size_t ACPI_METHOD_MAX_LOCAL ;


 int AE_AML_INVALID_INDEX ;
 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 int ds_method_data_get_node ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_method_data_get_node(u8 type,
        u32 index,
        struct acpi_walk_state *walk_state,
        struct acpi_namespace_node **node)
{
 ACPI_FUNCTION_TRACE(ds_method_data_get_node);




 switch (type) {
 case 128:

  if (index > ACPI_METHOD_MAX_LOCAL) {
   ACPI_ERROR((AE_INFO,
        "Local index %u is invalid (max %u)",
        index, ACPI_METHOD_MAX_LOCAL));
   return_ACPI_STATUS(AE_AML_INVALID_INDEX);
  }



  *node = &walk_state->local_variables[index];
  break;

 case 129:

  if (index > ACPI_METHOD_MAX_ARG) {
   ACPI_ERROR((AE_INFO,
        "Arg index %u is invalid (max %u)",
        index, ACPI_METHOD_MAX_ARG));
   return_ACPI_STATUS(AE_AML_INVALID_INDEX);
  }



  *node = &walk_state->arguments[index];
  break;

 default:

  ACPI_ERROR((AE_INFO, "Type %u is invalid", type));
  return_ACPI_STATUS(AE_TYPE);
 }

 return_ACPI_STATUS(AE_OK);
}
