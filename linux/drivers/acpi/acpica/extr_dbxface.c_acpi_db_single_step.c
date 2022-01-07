
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ aml_opcode; union acpi_parse_object* next; int aml; } ;
union acpi_parse_object {TYPE_4__ common; } ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int aml_start; } ;
struct acpi_walk_state {scalar_t__ method_breakpoint; scalar_t__ user_breakpoint; TYPE_3__* control_state; TYPE_1__ parser_state; } ;
typedef int acpi_status ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_7__ {TYPE_2__ common; } ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_LV_FUNCTIONS ;
 scalar_t__ ACPI_LV_PARSE ;
 scalar_t__ ACPI_PTR_DIFF (int ,int ) ;
 int ACPI_UINT32_MAX ;
 int AE_ABORT_METHOD ;
 int AE_OK ;


 scalar_t__ AML_ELSE_OP ;
 scalar_t__ AML_IF_OP ;
 scalar_t__ AML_INT_METHODCALL_OP ;
 scalar_t__ AML_INT_NAMEDFIELD_OP ;
 scalar_t__ AML_WHILE_OP ;
 void* FALSE ;
 void* TRUE ;
 int acpi_db_get_display_op (struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_db_start_command (struct acpi_walk_state*,union acpi_parse_object*) ;
 scalar_t__ acpi_dbg_level ;
 int acpi_dm_disassemble (struct acpi_walk_state*,int ,int ) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 void* acpi_gbl_abort_method ;
 void* acpi_gbl_cm_single_step ;
 scalar_t__ acpi_gbl_db_output_to_file ;
 scalar_t__ acpi_gbl_db_thread_id ;
 void* acpi_gbl_step_to_next_call ;
 scalar_t__ acpi_os_get_thread_id () ;
 int acpi_os_printf (char*,...) ;
 int acpi_ps_get_opcode_name (scalar_t__) ;

acpi_status
acpi_db_single_step(struct acpi_walk_state *walk_state,
      union acpi_parse_object *op, u32 opcode_class)
{
 union acpi_parse_object *next;
 acpi_status status = AE_OK;
 u32 original_debug_level;
 u32 aml_offset;

 ACPI_FUNCTION_ENTRY();


 if (acpi_gbl_db_thread_id != acpi_os_get_thread_id()) {
  return (AE_OK);
 }




 if (acpi_gbl_abort_method) {
  acpi_gbl_abort_method = FALSE;
  return (AE_ABORT_METHOD);
 }

 aml_offset = (u32)ACPI_PTR_DIFF(op->common.aml,
     walk_state->parser_state.aml_start);



 if (walk_state->method_breakpoint &&
     (walk_state->method_breakpoint <= aml_offset)) {




  acpi_os_printf("***Break*** at AML offset %X\n", aml_offset);
  acpi_gbl_cm_single_step = TRUE;
  acpi_gbl_step_to_next_call = FALSE;
  walk_state->method_breakpoint = 0;
 }



 else if (walk_state->user_breakpoint &&
   (walk_state->user_breakpoint == aml_offset)) {
  acpi_os_printf("***UserBreakpoint*** at AML offset %X\n",
          aml_offset);
  acpi_gbl_cm_single_step = TRUE;
  acpi_gbl_step_to_next_call = FALSE;
  walk_state->method_breakpoint = 0;
 }





 if (op->common.aml_opcode == AML_INT_NAMEDFIELD_OP) {
  return (AE_OK);
 }

 switch (opcode_class) {
 case 128:
 case 129:

  return (AE_OK);

 default:


  break;
 }




 if ((acpi_gbl_db_output_to_file) ||
     (acpi_gbl_cm_single_step) || (acpi_dbg_level & ACPI_LV_PARSE)) {
  if ((acpi_gbl_db_output_to_file) ||
      (acpi_dbg_level & ACPI_LV_PARSE)) {
   acpi_os_printf
       ("\nAML Debug: Next AML Opcode to execute:\n");
  }






  original_debug_level = acpi_dbg_level;
  acpi_dbg_level &= ~(ACPI_LV_PARSE | ACPI_LV_FUNCTIONS);
  next = op->common.next;
  op->common.next = ((void*)0);
  acpi_os_printf("AML Opcode: %4.4X %s\n", op->common.aml_opcode,
          acpi_ps_get_opcode_name(op->common.aml_opcode));


  if ((op->common.aml_opcode == AML_IF_OP) ||
      (op->common.aml_opcode == AML_WHILE_OP)) {
   if (walk_state->control_state->common.value) {
    acpi_os_printf
        ("Predicate = [True], IF block was executed\n");
   } else {
    acpi_os_printf
        ("Predicate = [False], Skipping IF block\n");
   }
  } else if (op->common.aml_opcode == AML_ELSE_OP) {
   acpi_os_printf
       ("Predicate = [False], ELSE block was executed\n");
  }



  op->common.next = next;
  acpi_os_printf("\n");
  if ((acpi_gbl_db_output_to_file) ||
      (acpi_dbg_level & ACPI_LV_PARSE)) {
   acpi_os_printf("\n");
  }
  acpi_dbg_level = original_debug_level;
 }



 if (!acpi_gbl_cm_single_step) {
  return (AE_OK);
 }





 if (acpi_gbl_step_to_next_call) {
  if (op->common.aml_opcode != AML_INT_METHODCALL_OP) {



   return (AE_OK);
  }



  acpi_gbl_step_to_next_call = FALSE;
 }





 if (op->common.aml_opcode == AML_INT_METHODCALL_OP) {



  acpi_gbl_cm_single_step = FALSE;





  walk_state->method_breakpoint = 1;
 }

 acpi_ex_exit_interpreter();
 status = acpi_db_start_command(walk_state, op);
 acpi_ex_enter_interpreter();



 return (status);
}
