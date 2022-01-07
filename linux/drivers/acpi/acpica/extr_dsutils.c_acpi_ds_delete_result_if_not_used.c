
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_INFO ;
 int acpi_ds_is_result_used (union acpi_parse_object*,struct acpi_walk_state*) ;
 int acpi_ds_result_pop (union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_delete_result_if_not_used ;
 int return_VOID ;

void
acpi_ds_delete_result_if_not_used(union acpi_parse_object *op,
      union acpi_operand_object *result_obj,
      struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *obj_desc;
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ds_delete_result_if_not_used, result_obj);

 if (!op) {
  ACPI_ERROR((AE_INFO, "Null Op"));
  return_VOID;
 }

 if (!result_obj) {
  return_VOID;
 }

 if (!acpi_ds_is_result_used(op, walk_state)) {



  status = acpi_ds_result_pop(&obj_desc, walk_state);
  if (ACPI_SUCCESS(status)) {
   acpi_ut_remove_reference(result_obj);
  }
 }

 return_VOID;
}
