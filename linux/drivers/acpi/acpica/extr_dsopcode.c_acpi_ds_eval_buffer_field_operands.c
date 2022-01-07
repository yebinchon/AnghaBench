
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {union acpi_parse_object* arg; } ;
struct TYPE_4__ {scalar_t__ aml_opcode; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {int ** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_WALK_OPERANDS ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 scalar_t__ AML_CREATE_FIELD_OP ;
 int acpi_ds_create_operands (struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_ds_init_buffer_field (scalar_t__,union acpi_operand_object*,int *,int *,int *,int *) ;
 int acpi_ex_resolve_operands (scalar_t__,int ,struct acpi_walk_state*) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ps_get_opcode_name (scalar_t__) ;
 int ds_eval_buffer_field_operands ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_eval_buffer_field_operands(struct acpi_walk_state *walk_state,
       union acpi_parse_object *op)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;
 struct acpi_namespace_node *node;
 union acpi_parse_object *next_op;

 ACPI_FUNCTION_TRACE_PTR(ds_eval_buffer_field_operands, op);





 node = op->common.node;



 next_op = op->common.value.arg;



 status = acpi_ds_create_operands(walk_state, next_op);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 obj_desc = acpi_ns_get_attached_object(node);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 status =
     acpi_ex_resolve_operands(op->common.aml_opcode, ACPI_WALK_OPERANDS,
         walk_state);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "(%s) bad operand(s), status 0x%X",
       acpi_ps_get_opcode_name(op->common.aml_opcode),
       status));

  return_ACPI_STATUS(status);
 }



 if (op->common.aml_opcode == AML_CREATE_FIELD_OP) {



  status =
      acpi_ds_init_buffer_field(op->common.aml_opcode, obj_desc,
           walk_state->operands[0],
           walk_state->operands[1],
           walk_state->operands[2],
           walk_state->operands[3]);
 } else {


  status =
      acpi_ds_init_buffer_field(op->common.aml_opcode, obj_desc,
           walk_state->operands[0],
           walk_state->operands[1], ((void*)0),
           walk_state->operands[2]);
 }

 return_ACPI_STATUS(status);
}
