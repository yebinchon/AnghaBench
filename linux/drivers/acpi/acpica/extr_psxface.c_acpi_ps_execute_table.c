
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {int parse_flags; int method_is_nested; int method_pathname; } ;
struct acpi_evaluate_info {int node; TYPE_2__* obj_desc; int full_pathname; int pass_number; } ;
typedef int acpi_status ;
struct TYPE_3__ {int info_flags; int aml_length; int aml_start; int owner_id; } ;
struct TYPE_4__ {TYPE_1__ method; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_METHOD_MODULE_LEVEL ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_METHOD ;
 int AE_NO_MEMORY ;
 int FALSE ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,int *,int *) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 int acpi_ds_init_aml_walk (struct acpi_walk_state*,union acpi_parse_object*,int ,int ,int ,struct acpi_evaluate_info*,int ) ;
 int acpi_ds_scope_stack_push (int ,int ,struct acpi_walk_state*) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_gbl_root_node ;
 union acpi_parse_object* acpi_ps_create_scope_op (int ) ;
 int acpi_ps_delete_parse_tree (union acpi_parse_object*) ;
 int acpi_ps_parse_aml (struct acpi_walk_state*) ;
 int ps_execute_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ps_execute_table(struct acpi_evaluate_info *info)
{
 acpi_status status;
 union acpi_parse_object *op = ((void*)0);
 struct acpi_walk_state *walk_state = ((void*)0);

 ACPI_FUNCTION_TRACE(ps_execute_table);



 op = acpi_ps_create_scope_op(info->obj_desc->method.aml_start);
 if (!op) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }



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
  goto cleanup;
 }

 walk_state->method_pathname = info->full_pathname;
 walk_state->method_is_nested = FALSE;

 if (info->obj_desc->method.info_flags & ACPI_METHOD_MODULE_LEVEL) {
  walk_state->parse_flags |= ACPI_PARSE_MODULE_LEVEL;
 }



 if (info->node && info->node != acpi_gbl_root_node) {
  status =
      acpi_ds_scope_stack_push(info->node, ACPI_TYPE_METHOD,
          walk_state);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }
 }




 acpi_ex_enter_interpreter();
 status = acpi_ps_parse_aml(walk_state);
 acpi_ex_exit_interpreter();
 walk_state = ((void*)0);

cleanup:
 if (walk_state) {
  acpi_ds_delete_walk_state(walk_state);
 }
 if (op) {
  acpi_ps_delete_parse_tree(op);
 }
 return_ACPI_STATUS(status);
}
