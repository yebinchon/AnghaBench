
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_7__* node; } ;
struct TYPE_11__ {scalar_t__ aml_opcode; } ;
union acpi_parse_object {TYPE_5__ named; TYPE_4__ common; } ;
typedef int u32 ;
struct acpi_walk_state {scalar_t__ opcode; int walk_type; TYPE_6__* op_info; TYPE_3__* control_state; union acpi_parse_object* origin; union acpi_parse_object* op; } ;
typedef int acpi_status ;
struct TYPE_14__ {int type; } ;
struct TYPE_13__ {int class; int object_type; } ;
struct TYPE_9__ {union acpi_parse_object* predicate_op; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_10__ {TYPE_2__ control; TYPE_1__ common; } ;


 scalar_t__ ACPI_CONTROL_CONDITIONAL_EXECUTING ;
 scalar_t__ ACPI_CONTROL_PREDICATE_EXECUTING ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_WALK_METHOD ;
 int AE_OK ;




 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_SCOPE_OP ;
 int acpi_ds_exec_begin_control_op (struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_ds_load2_begin_op (struct acpi_walk_state*,union acpi_parse_object**) ;
 int acpi_ds_method_error (int ,struct acpi_walk_state*) ;
 int acpi_ds_scope_stack_pop (struct acpi_walk_state*) ;
 int acpi_ds_scope_stack_push (TYPE_7__*,int ,struct acpi_walk_state*) ;
 scalar_t__ acpi_ns_opens_scope (int ) ;
 TYPE_6__* acpi_ps_get_opcode_info (scalar_t__) ;
 int acpi_ut_get_type_name (int ) ;
 int ds_exec_begin_op ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_exec_begin_op(struct acpi_walk_state *walk_state,
        union acpi_parse_object **out_op)
{
 union acpi_parse_object *op;
 acpi_status status = AE_OK;
 u32 opcode_class;

 ACPI_FUNCTION_TRACE_PTR(ds_exec_begin_op, walk_state);

 op = walk_state->op;
 if (!op) {
  status = acpi_ds_load2_begin_op(walk_state, out_op);
  if (ACPI_FAILURE(status)) {
   goto error_exit;
  }

  op = *out_op;
  walk_state->op = op;
  walk_state->opcode = op->common.aml_opcode;
  walk_state->op_info =
      acpi_ps_get_opcode_info(op->common.aml_opcode);

  if (acpi_ns_opens_scope(walk_state->op_info->object_type)) {
   ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
       "(%s) Popping scope for Op %p\n",
       acpi_ut_get_type_name(walk_state->
        op_info->
        object_type),
       op));

   status = acpi_ds_scope_stack_pop(walk_state);
   if (ACPI_FAILURE(status)) {
    goto error_exit;
   }
  }
 }

 if (op == walk_state->origin) {
  if (out_op) {
   *out_op = op;
  }

  return_ACPI_STATUS(AE_OK);
 }






 if ((walk_state->control_state) &&
     (walk_state->control_state->common.state ==
      ACPI_CONTROL_CONDITIONAL_EXECUTING)) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Exec predicate Op=%p State=%p\n",
      op, walk_state));

  walk_state->control_state->common.state =
      ACPI_CONTROL_PREDICATE_EXECUTING;



  walk_state->control_state->control.predicate_op = op;
 }

 opcode_class = walk_state->op_info->class;



 if (op->common.aml_opcode == AML_INT_NAMEPATH_OP) {
  opcode_class = 128;
 }




 switch (opcode_class) {
 case 131:

  status = acpi_ds_exec_begin_control_op(walk_state, op);
  break;

 case 128:

  if (walk_state->walk_type & ACPI_WALK_METHOD) {
   if (op->common.aml_opcode != AML_SCOPE_OP) {
    status =
        acpi_ds_load2_begin_op(walk_state, ((void*)0));
   } else {
    status =
        acpi_ds_scope_stack_push(op->named.node,
            op->named.node->
            type, walk_state);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }
   }
  }
  break;

 case 129:
 case 130:

  break;

 default:

  break;
 }



 return_ACPI_STATUS(status);

error_exit:
 status = acpi_ds_method_error(status, walk_state);
 return_ACPI_STATUS(status);
}
