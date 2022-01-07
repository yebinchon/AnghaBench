
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {union acpi_operand_object* return_desc; scalar_t__ return_used; union acpi_operand_object* implicit_return_obj; int results; int method_call_op; int method_node; } ;
typedef int acpi_status ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int AE_OK ;
 int FALSE ;
 int acpi_ds_do_implicit_return (union acpi_operand_object*,struct acpi_walk_state*,int ) ;
 int acpi_ds_result_push (union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ut_get_node_name (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_restart_control_method ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_restart_control_method(struct acpi_walk_state *walk_state,
          union acpi_operand_object *return_desc)
{
 acpi_status status;
 int same_as_implicit_return;

 ACPI_FUNCTION_TRACE_PTR(ds_restart_control_method, walk_state);

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "****Restart [%4.4s] Op %p ReturnValueFromCallee %p\n",
     acpi_ut_get_node_name(walk_state->method_node),
     walk_state->method_call_op, return_desc));

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "    ReturnFromThisMethodUsed?=%X ResStack %p Walk %p\n",
     walk_state->return_used,
     walk_state->results, walk_state));



 if (return_desc) {



  same_as_implicit_return =
      (walk_state->implicit_return_obj == return_desc);



  if (walk_state->return_used) {



   status = acpi_ds_result_push(return_desc, walk_state);
   if (ACPI_FAILURE(status)) {
    acpi_ut_remove_reference(return_desc);
    return_ACPI_STATUS(status);
   }





   walk_state->return_desc = return_desc;
  }
  else if (!acpi_ds_do_implicit_return
    (return_desc, walk_state, FALSE)
    || same_as_implicit_return) {





   acpi_ut_remove_reference(return_desc);
  }
 }

 return_ACPI_STATUS(AE_OK);
}
