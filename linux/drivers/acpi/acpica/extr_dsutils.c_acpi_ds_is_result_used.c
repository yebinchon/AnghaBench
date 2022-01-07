
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


struct TYPE_12__ {scalar_t__ aml_opcode; TYPE_5__* parent; } ;
union acpi_parse_object {TYPE_6__ common; } ;
typedef int u8 ;
struct acpi_walk_state {TYPE_3__* control_state; int result_obj; } ;
struct acpi_opcode_info {int class; } ;
struct TYPE_10__ {scalar_t__ aml_opcode; } ;
struct TYPE_11__ {TYPE_4__ common; } ;
struct TYPE_8__ {union acpi_parse_object* predicate_op; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_9__ {TYPE_2__ control; TYPE_1__ common; } ;


 int ACPI_CONTROL_PREDICATE_EXECUTING ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int AE_INFO ;
 scalar_t__ AML_BANK_FIELD_OP ;
 scalar_t__ AML_BUFFER_OP ;



 int AML_CLASS_UNKNOWN ;
 scalar_t__ AML_DATA_REGION_OP ;

 scalar_t__ AML_INT_EVAL_SUBTREE_OP ;
 scalar_t__ AML_PACKAGE_OP ;
 scalar_t__ AML_REGION_OP ;

 scalar_t__ AML_SCOPE_OP ;
 scalar_t__ AML_VARIABLE_PACKAGE_OP ;

 int FALSE ;
 int TRUE ;
 int acpi_ds_do_implicit_return (int ,struct acpi_walk_state*,int ) ;
 struct acpi_opcode_info* acpi_ps_get_opcode_info (scalar_t__) ;
 int acpi_ps_get_opcode_name (scalar_t__) ;
 int ds_is_result_used ;
 int return_UINT8 (int ) ;

u8
acpi_ds_is_result_used(union acpi_parse_object * op,
         struct acpi_walk_state * walk_state)
{
 const struct acpi_opcode_info *parent_info;

 ACPI_FUNCTION_TRACE_PTR(ds_is_result_used, op);



 if (!op) {
  ACPI_ERROR((AE_INFO, "Null Op"));
  return_UINT8(TRUE);
 }
 (void)acpi_ds_do_implicit_return(walk_state->result_obj, walk_state,
      TRUE);
 if ((!op->common.parent) ||
     (op->common.parent->common.aml_opcode == AML_SCOPE_OP)) {



  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "At Method level, result of [%s] not used\n",
      acpi_ps_get_opcode_name(op->common.
         aml_opcode)));
  return_UINT8(FALSE);
 }



 parent_info =
     acpi_ps_get_opcode_info(op->common.parent->common.aml_opcode);
 if (parent_info->class == AML_CLASS_UNKNOWN) {
  ACPI_ERROR((AE_INFO, "Unknown parent opcode Op=%p", op));
  return_UINT8(FALSE);
 }







 switch (parent_info->class) {
 case 133:

  switch (op->common.parent->common.aml_opcode) {
  case 129:



   goto result_used;

  case 130:
  case 128:




   if ((walk_state->control_state->common.state ==
        ACPI_CONTROL_PREDICATE_EXECUTING) &&
       (walk_state->control_state->control.predicate_op ==
        op)) {
    goto result_used;
   }
   break;

  default:



   break;
  }



  goto result_not_used;

 case 132:




  goto result_used;

 case 131:

  if ((op->common.parent->common.aml_opcode == AML_REGION_OP) ||
      (op->common.parent->common.aml_opcode == AML_DATA_REGION_OP)
      || (op->common.parent->common.aml_opcode == AML_PACKAGE_OP)
      || (op->common.parent->common.aml_opcode == AML_BUFFER_OP)
      || (op->common.parent->common.aml_opcode ==
   AML_VARIABLE_PACKAGE_OP)
      || (op->common.parent->common.aml_opcode ==
   AML_INT_EVAL_SUBTREE_OP)
      || (op->common.parent->common.aml_opcode ==
   AML_BANK_FIELD_OP)) {




   goto result_used;
  }

  goto result_not_used;

 default:




  goto result_used;
 }

result_used:
 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "Result of [%s] used by Parent [%s] Op=%p\n",
     acpi_ps_get_opcode_name(op->common.aml_opcode),
     acpi_ps_get_opcode_name(op->common.parent->common.
        aml_opcode), op));

 return_UINT8(TRUE);

result_not_used:
 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "Result of [%s] not used by Parent [%s] Op=%p\n",
     acpi_ps_get_opcode_name(op->common.aml_opcode),
     acpi_ps_get_opcode_name(op->common.parent->common.
        aml_opcode), op));

 return_UINT8(FALSE);
}
