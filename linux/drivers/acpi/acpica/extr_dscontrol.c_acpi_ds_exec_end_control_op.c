
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int arg; } ;
struct TYPE_19__ {int aml_opcode; TYPE_2__ value; } ;
union acpi_parse_object {TYPE_8__ common; } ;
struct TYPE_18__ {int const opcode; int package_end; int aml_predicate_start; int loop_timeout; } ;
struct TYPE_12__ {int value; } ;
union acpi_generic_state {TYPE_7__ control; TYPE_1__ common; } ;
typedef int u8 ;
struct acpi_walk_state {union acpi_generic_state* control_state; int aml_last_while; TYPE_9__* return_desc; int num_operands; TYPE_9__** operands; TYPE_6__* results; int result_count; int last_predicate; } ;
typedef int acpi_status ;
struct TYPE_15__ {int class; } ;
struct TYPE_14__ {int type; } ;
struct TYPE_20__ {TYPE_4__ reference; TYPE_3__ common; } ;
struct TYPE_16__ {TYPE_9__** obj_desc; } ;
struct TYPE_17__ {TYPE_5__ results; } ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_OPERAND ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_GET_DESCRIPTOR_TYPE (TYPE_9__*) ;
 int ACPI_REFCLASS_INDEX ;
 int ACPI_SIGNAL_BREAKPOINT ;
 int ACPI_TIME_AFTER (int ,int ) ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_LOOP_TIMEOUT ;
 int AE_AML_NO_WHILE ;
 int AE_CTRL_BREAK ;
 int AE_CTRL_CONTINUE ;
 int AE_CTRL_PENDING ;
 int AE_CTRL_TERMINATE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_db_signal_break_point (struct acpi_walk_state*) ;
 int acpi_ds_clear_implicit_return (struct acpi_walk_state*) ;
 int acpi_ds_create_operands (struct acpi_walk_state*,int ) ;
 int acpi_ex_resolve_to_value (TYPE_9__**,struct acpi_walk_state*) ;
 int acpi_os_get_timer () ;
 int acpi_os_signal (int ,char*) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_pop_generic_state (union acpi_generic_state**) ;
 int acpi_ut_remove_reference (TYPE_9__*) ;
 int ds_exec_end_control_op ;

acpi_status
acpi_ds_exec_end_control_op(struct acpi_walk_state *walk_state,
       union acpi_parse_object *op)
{
 acpi_status status = AE_OK;
 union acpi_generic_state *control_state;

 ACPI_FUNCTION_NAME(ds_exec_end_control_op);

 switch (op->common.aml_opcode) {
 case 131:

  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH, "[IF_OP] Op=%p\n", op));





  walk_state->last_predicate =
      (u8)walk_state->control_state->common.value;





  control_state =
      acpi_ut_pop_generic_state(&walk_state->control_state);
  acpi_ut_delete_generic_state(control_state);
  break;

 case 132:

  break;

 case 128:

  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH, "[WHILE_OP] Op=%p\n", op));

  control_state = walk_state->control_state;
  if (control_state->common.value) {
   if (ACPI_TIME_AFTER(acpi_os_get_timer(),
         control_state->control.
         loop_timeout)) {
    status = AE_AML_LOOP_TIMEOUT;
    break;
   }





   status = AE_CTRL_PENDING;
   walk_state->aml_last_while =
       control_state->control.aml_predicate_start;
   break;
  }



  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "[WHILE_OP] termination! Op=%p\n", op));



  control_state =
      acpi_ut_pop_generic_state(&walk_state->control_state);
  acpi_ut_delete_generic_state(control_state);
  break;

 case 129:

  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "[RETURN_OP] Op=%p Arg=%p\n", op,
      op->common.value.arg));






  if (op->common.value.arg) {



   acpi_ds_clear_implicit_return(walk_state);



   status =
       acpi_ds_create_operands(walk_state,
          op->common.value.arg);
   if (ACPI_FAILURE(status)) {
    return (status);
   }






   status =
       acpi_ex_resolve_to_value(&walk_state->operands[0],
           walk_state);
   if (ACPI_FAILURE(status)) {
    return (status);
   }






   walk_state->return_desc = walk_state->operands[0];
  } else if (walk_state->result_count) {



   acpi_ds_clear_implicit_return(walk_state);
   if ((ACPI_GET_DESCRIPTOR_TYPE
        (walk_state->results->results.obj_desc[0]) ==
        ACPI_DESC_TYPE_OPERAND)
       && ((walk_state->results->results.obj_desc[0])->
    common.type == ACPI_TYPE_LOCAL_REFERENCE)
       && ((walk_state->results->results.obj_desc[0])->
    reference.class != ACPI_REFCLASS_INDEX)) {
    status =
        acpi_ex_resolve_to_value(&walk_state->
            results->results.
            obj_desc[0],
            walk_state);
    if (ACPI_FAILURE(status)) {
     return (status);
    }
   }

   walk_state->return_desc =
       walk_state->results->results.obj_desc[0];
  } else {


   if (walk_state->num_operands) {
    acpi_ut_remove_reference(walk_state->
        operands[0]);
   }

   walk_state->operands[0] = ((void*)0);
   walk_state->num_operands = 0;
   walk_state->return_desc = ((void*)0);
  }

  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "Completed RETURN_OP State=%p, RetVal=%p\n",
      walk_state, walk_state->return_desc));



  status = AE_CTRL_TERMINATE;
  break;

 case 130:



  break;

 case 135:

  acpi_db_signal_break_point(walk_state);



  status = acpi_os_signal(ACPI_SIGNAL_BREAKPOINT,
     "Executed AML Breakpoint opcode");
  break;

 case 134:
 case 133:



  while (walk_state->control_state &&
         (walk_state->control_state->control.opcode !=
   128)) {
   control_state =
       acpi_ut_pop_generic_state(&walk_state->
            control_state);
   acpi_ut_delete_generic_state(control_state);
  }



  if (!walk_state->control_state) {
   return (AE_AML_NO_WHILE);
  }



  walk_state->aml_last_while =
      walk_state->control_state->control.package_end;



  if (op->common.aml_opcode == 134) {
   status = AE_CTRL_BREAK;
  } else {
   status = AE_CTRL_CONTINUE;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown control opcode=0x%X Op=%p",
       op->common.aml_opcode, op));

  status = AE_AML_BAD_OPCODE;
  break;
 }

 return (status);
}
