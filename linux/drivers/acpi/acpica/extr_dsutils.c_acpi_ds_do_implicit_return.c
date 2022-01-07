
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef scalar_t__ u8 ;
struct acpi_walk_state {union acpi_operand_object* implicit_return_obj; } ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_ds_clear_implicit_return (struct acpi_walk_state*) ;
 int acpi_gbl_enable_interpreter_slack ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int ds_do_implicit_return ;

u8
acpi_ds_do_implicit_return(union acpi_operand_object *return_desc,
      struct acpi_walk_state *walk_state, u8 add_reference)
{
 ACPI_FUNCTION_NAME(ds_do_implicit_return);





 if ((!acpi_gbl_enable_interpreter_slack) || (!return_desc)) {
  return (FALSE);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "Result %p will be implicitly returned; Prev=%p\n",
     return_desc, walk_state->implicit_return_obj));







 if (walk_state->implicit_return_obj) {
  if (walk_state->implicit_return_obj == return_desc) {
   return (TRUE);
  }
  acpi_ds_clear_implicit_return(walk_state);
 }



 walk_state->implicit_return_obj = return_desc;
 if (add_reference) {
  acpi_ut_add_reference(return_desc);
 }

 return (TRUE);
}
