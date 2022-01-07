
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {int * implicit_return_obj; } ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int acpi_gbl_enable_interpreter_slack ;
 int acpi_ut_remove_reference (int *) ;
 int ds_clear_implicit_return ;

void acpi_ds_clear_implicit_return(struct acpi_walk_state *walk_state)
{
 ACPI_FUNCTION_NAME(ds_clear_implicit_return);




 if (!acpi_gbl_enable_interpreter_slack) {
  return;
 }

 if (walk_state->implicit_return_obj) {





  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "Removing reference on stale implicit return obj %p\n",
      walk_state->implicit_return_obj));

  acpi_ut_remove_reference(walk_state->implicit_return_obj);
  walk_state->implicit_return_obj = ((void*)0);
 }
}
