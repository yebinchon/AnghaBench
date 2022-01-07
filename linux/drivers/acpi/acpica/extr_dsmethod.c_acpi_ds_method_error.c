
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int aml_start; } ;
struct acpi_walk_state {int op; int opcode; TYPE_5__* deferred_node; TYPE_3__* method_node; TYPE_1__ parser_state; int aml; } ;
typedef int acpi_status ;
typedef int acpi_name ;
struct TYPE_9__ {int integer; } ;
struct TYPE_10__ {TYPE_4__ name; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_8__ {TYPE_2__ name; } ;


 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_PTR_DIFF (int ,int ) ;
 scalar_t__ ACPI_SUCCESS (int) ;
 int AE_CODE_CONTROL ;
 int acpi_db_dump_method_info (int,struct acpi_walk_state*) ;
 int acpi_ds_clear_implicit_return (struct acpi_walk_state*) ;
 int acpi_ds_dump_method_stack (int,struct acpi_walk_state*,int ) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_gbl_exception_handler (int,int ,int ,scalar_t__,int *) ;

acpi_status
acpi_ds_method_error(acpi_status status, struct acpi_walk_state *walk_state)
{
 u32 aml_offset;
 acpi_name name = 0;

 ACPI_FUNCTION_ENTRY();



 if (ACPI_SUCCESS(status) || (status & AE_CODE_CONTROL)) {
  return (status);
 }



 if (acpi_gbl_exception_handler) {



  acpi_ex_exit_interpreter();





  aml_offset = (u32)ACPI_PTR_DIFF(walk_state->aml,
      walk_state->parser_state.
      aml_start);

  if (walk_state->method_node) {
   name = walk_state->method_node->name.integer;
  } else if (walk_state->deferred_node) {
   name = walk_state->deferred_node->name.integer;
  }

  status = acpi_gbl_exception_handler(status, name,
          walk_state->opcode,
          aml_offset, ((void*)0));
  acpi_ex_enter_interpreter();
 }

 acpi_ds_clear_implicit_return(walk_state);

 if (ACPI_FAILURE(status)) {
  acpi_ds_dump_method_stack(status, walk_state, walk_state->op);






 }

 return (status);
}
