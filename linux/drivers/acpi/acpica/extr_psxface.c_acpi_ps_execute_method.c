
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef int u64 ;
struct acpi_walk_state {int implicit_return_obj; int method_desc; int parser_state; scalar_t__ return_desc; int parse_flags; int method_is_nested; int method_pathname; } ;
struct acpi_evaluate_info {scalar_t__ return_object; TYPE_6__* obj_desc; int full_pathname; int pass_number; TYPE_4__* node; } ;
typedef int acpi_status ;
struct TYPE_8__ {int (* implementation ) (struct acpi_walk_state*) ;} ;
struct TYPE_9__ {int info_flags; TYPE_2__ dispatch; int aml_length; int aml_start; int owner_id; } ;
struct TYPE_11__ {TYPE_3__ method; } ;
struct TYPE_7__ {int ascii; } ;
struct TYPE_10__ {TYPE_1__ name; } ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DUMP_STACK_ENTRY (scalar_t__) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_METHOD_INTERNAL_ONLY ;
 int ACPI_METHOD_MODULE_LEVEL ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int AE_CTRL_RETURN_VALUE ;
 int AE_NO_MEMORY ;
 int AE_NULL_ENTRY ;
 int FALSE ;
 int REF_DECREMENT ;
 int REF_INCREMENT ;
 int acpi_ds_begin_method_execution (TYPE_4__*,TYPE_6__*,int *) ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,int *,int *) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 int acpi_ds_init_aml_walk (struct acpi_walk_state*,union acpi_parse_object*,TYPE_4__*,int ,int ,struct acpi_evaluate_info*,int ) ;
 int acpi_ds_scope_stack_clear (struct acpi_walk_state*) ;
 int acpi_ds_terminate_control_method (int ,struct acpi_walk_state*) ;
 scalar_t__ acpi_gbl_enable_interpreter_slack ;
 int acpi_ps_cleanup_scope (int *) ;
 union acpi_parse_object* acpi_ps_create_scope_op (int ) ;
 int acpi_ps_delete_parse_tree (union acpi_parse_object*) ;
 int acpi_ps_parse_aml (struct acpi_walk_state*) ;
 int acpi_ps_update_parameter_list (struct acpi_evaluate_info*,int ) ;
 int acpi_tb_check_dsdt_header () ;
 int acpi_ut_create_integer_object (int ) ;
 int ps_execute_method ;
 int return_ACPI_STATUS (int ) ;
 int stub1 (struct acpi_walk_state*) ;

acpi_status acpi_ps_execute_method(struct acpi_evaluate_info *info)
{
 acpi_status status;
 union acpi_parse_object *op;
 struct acpi_walk_state *walk_state;

 ACPI_FUNCTION_TRACE(ps_execute_method);



 acpi_tb_check_dsdt_header();



 if (!info || !info->node) {
  return_ACPI_STATUS(AE_NULL_ENTRY);
 }



 status =
     acpi_ds_begin_method_execution(info->node, info->obj_desc, ((void*)0));
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }




 acpi_ps_update_parameter_list(info, REF_INCREMENT);




 ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
     "**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\n",
     info->node->name.ascii, info->node, info->obj_desc));



 op = acpi_ps_create_scope_op(info->obj_desc->method.aml_start);
 if (!op) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }



 info->pass_number = ACPI_IMODE_EXECUTE;
 walk_state =
     acpi_ds_create_walk_state(info->obj_desc->method.owner_id, ((void*)0),
          ((void*)0), ((void*)0));
 if (!walk_state) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }

 status = acpi_ds_init_aml_walk(walk_state, op, info->node,
           info->obj_desc->method.aml_start,
           info->obj_desc->method.aml_length, info,
           info->pass_number);
 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }

 walk_state->method_pathname = info->full_pathname;
 walk_state->method_is_nested = FALSE;

 if (info->obj_desc->method.info_flags & ACPI_METHOD_MODULE_LEVEL) {
  walk_state->parse_flags |= ACPI_PARSE_MODULE_LEVEL;
 }



 if (info->obj_desc->method.info_flags & ACPI_METHOD_INTERNAL_ONLY) {
  status =
      info->obj_desc->method.dispatch.implementation(walk_state);
  info->return_object = walk_state->return_desc;



  acpi_ds_scope_stack_clear(walk_state);
  acpi_ps_cleanup_scope(&walk_state->parser_state);
  acpi_ds_terminate_control_method(walk_state->method_desc,
       walk_state);
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }





 if (acpi_gbl_enable_interpreter_slack) {
  walk_state->implicit_return_obj =
      acpi_ut_create_integer_object((u64) 0);
  if (!walk_state->implicit_return_obj) {
   status = AE_NO_MEMORY;
   acpi_ds_delete_walk_state(walk_state);
   goto cleanup;
  }
 }



 status = acpi_ps_parse_aml(walk_state);



cleanup:
 acpi_ps_delete_parse_tree(op);



 acpi_ps_update_parameter_list(info, REF_DECREMENT);



 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }





 if (info->return_object) {
  ACPI_DEBUG_PRINT((ACPI_DB_PARSE, "Method returned ObjDesc=%p\n",
      info->return_object));
  ACPI_DUMP_STACK_ENTRY(info->return_object);

  status = AE_CTRL_RETURN_VALUE;
 }

 return_ACPI_STATUS(status);
}
