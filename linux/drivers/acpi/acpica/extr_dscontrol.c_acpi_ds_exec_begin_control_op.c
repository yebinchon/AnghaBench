
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int aml_opcode; } ;
union acpi_parse_object {TYPE_4__ common; } ;
struct TYPE_11__ {int opcode; scalar_t__ loop_timeout; int package_end; int aml_predicate_start; } ;
union acpi_generic_state {TYPE_5__ control; } ;
typedef scalar_t__ u64 ;
struct TYPE_9__ {int pkg_end; int aml; } ;
struct acpi_walk_state {int last_predicate; TYPE_6__* control_state; TYPE_3__ parser_state; } ;
typedef int acpi_status ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {int aml_predicate_start; } ;
struct TYPE_12__ {TYPE_2__ common; TYPE_1__ control; } ;


 int ACPI_100NSEC_PER_SEC ;
 int ACPI_CONTROL_CONDITIONAL_EXECUTING ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AE_CTRL_TRUE ;
 int AE_NO_MEMORY ;
 int AE_OK ;




 int acpi_gbl_max_loop_iterations ;
 scalar_t__ acpi_os_get_timer () ;
 union acpi_generic_state* acpi_ut_create_control_state () ;
 int acpi_ut_push_generic_state (TYPE_6__**,union acpi_generic_state*) ;
 int ds_exec_begin_control_op ;

acpi_status
acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
         union acpi_parse_object *op)
{
 acpi_status status = AE_OK;
 union acpi_generic_state *control_state;

 ACPI_FUNCTION_NAME(ds_exec_begin_control_op);

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH, "Op=%p Opcode=%2.2X State=%p\n",
     op, op->common.aml_opcode, walk_state));

 switch (op->common.aml_opcode) {
 case 128:




  if (walk_state->control_state) {
   if (walk_state->control_state->control.
       aml_predicate_start ==
       (walk_state->parser_state.aml - 1)) {



    walk_state->control_state->common.state =
        ACPI_CONTROL_CONDITIONAL_EXECUTING;
    break;
   }
  }



 case 130:





  control_state = acpi_ut_create_control_state();
  if (!control_state) {
   status = AE_NO_MEMORY;
   break;
  }




  control_state->control.aml_predicate_start =
      walk_state->parser_state.aml - 1;
  control_state->control.package_end =
      walk_state->parser_state.pkg_end;
  control_state->control.opcode = op->common.aml_opcode;
  control_state->control.loop_timeout = acpi_os_get_timer() +
      (u64)(acpi_gbl_max_loop_iterations * ACPI_100NSEC_PER_SEC);



  acpi_ut_push_generic_state(&walk_state->control_state,
        control_state);
  break;

 case 131:




  if (walk_state->last_predicate) {
   status = AE_CTRL_TRUE;
  }

  break;

 case 129:

  break;

 default:

  break;
 }

 return (status);
}
