
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct TYPE_5__ {scalar_t__ (* implementation ) (struct acpi_walk_state*) ;} ;
struct TYPE_6__ {size_t param_count; int info_flags; TYPE_2__ dispatch; int aml_length; int aml_start; int owner_id; } ;
union acpi_operand_object {TYPE_3__ method; } ;
typedef size_t u32 ;
struct acpi_walk_state {size_t num_operands; int method_nesting_depth; int * method_pathname; int method_is_nested; int ** operands; struct acpi_namespace_node* method_call_node; int prev_op; } ;
struct acpi_thread_state {int dummy; } ;
struct TYPE_4__ {int ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct acpi_evaluate_info {int ** parameters; } ;
typedef scalar_t__ acpi_status ;


 struct acpi_evaluate_info* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DB_EVALUATION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FREE (struct acpi_evaluate_info*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_METHOD_INTERNAL_ONLY ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_NULL_ENTRY ;
 scalar_t__ AE_NULL_OBJECT ;
 scalar_t__ AE_OK ;
 int TRUE ;
 scalar_t__ acpi_ds_begin_method_execution (struct acpi_namespace_node*,union acpi_operand_object*,struct acpi_walk_state*) ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,union acpi_operand_object*,struct acpi_thread_state*) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 scalar_t__ acpi_ds_init_aml_walk (struct acpi_walk_state*,int *,struct acpi_namespace_node*,int ,int ,struct acpi_evaluate_info*,int ) ;
 int acpi_ds_terminate_control_method (union acpi_operand_object*,struct acpi_walk_state*) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int * acpi_ns_get_normalized_pathname (struct acpi_namespace_node*,int ) ;
 int acpi_ut_remove_reference (int *) ;
 int ds_call_control_method ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ stub1 (struct acpi_walk_state*) ;

acpi_status
acpi_ds_call_control_method(struct acpi_thread_state *thread,
       struct acpi_walk_state *this_walk_state,
       union acpi_parse_object *op)
{
 acpi_status status;
 struct acpi_namespace_node *method_node;
 struct acpi_walk_state *next_walk_state = ((void*)0);
 union acpi_operand_object *obj_desc;
 struct acpi_evaluate_info *info;
 u32 i;

 ACPI_FUNCTION_TRACE_PTR(ds_call_control_method, this_walk_state);

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "Calling method %p, currentstate=%p\n",
     this_walk_state->prev_op, this_walk_state));




 method_node = this_walk_state->method_call_node;
 if (!method_node) {
  return_ACPI_STATUS(AE_NULL_ENTRY);
 }

 obj_desc = acpi_ns_get_attached_object(method_node);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NULL_OBJECT);
 }



 status =
     acpi_ds_begin_method_execution(method_node, obj_desc,
        this_walk_state);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 next_walk_state =
     acpi_ds_create_walk_state(obj_desc->method.owner_id, ((void*)0), obj_desc,
          thread);
 if (!next_walk_state) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }






 this_walk_state->operands[this_walk_state->num_operands] = ((void*)0);






 info = ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_evaluate_info));
 if (!info) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }

 info->parameters = &this_walk_state->operands[0];

 status = acpi_ds_init_aml_walk(next_walk_state, ((void*)0), method_node,
           obj_desc->method.aml_start,
           obj_desc->method.aml_length, info,
           ACPI_IMODE_EXECUTE);

 ACPI_FREE(info);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }

 next_walk_state->method_nesting_depth =
     this_walk_state->method_nesting_depth + 1;





 for (i = 0; i < obj_desc->method.param_count; i++) {
  acpi_ut_remove_reference(this_walk_state->operands[i]);
  this_walk_state->operands[i] = ((void*)0);
 }



 this_walk_state->num_operands = 0;

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "**** Begin nested execution of [%4.4s] **** WalkState=%p\n",
     method_node->name.ascii, next_walk_state));

 this_walk_state->method_pathname =
     acpi_ns_get_normalized_pathname(method_node, TRUE);
 this_walk_state->method_is_nested = TRUE;



 ACPI_DEBUG_PRINT_RAW((ACPI_DB_EVALUATION,
         "%-26s:  %*s%s\n", "   Nested method call",
         next_walk_state->method_nesting_depth * 3, " ",
         &this_walk_state->method_pathname[1]));



 if (obj_desc->method.info_flags & ACPI_METHOD_INTERNAL_ONLY) {
  status =
      obj_desc->method.dispatch.implementation(next_walk_state);
  if (status == AE_OK) {
   status = AE_CTRL_TERMINATE;
  }
 }

 return_ACPI_STATUS(status);

cleanup:



 acpi_ds_terminate_control_method(obj_desc, next_walk_state);
 acpi_ds_delete_walk_state(next_walk_state);

 return_ACPI_STATUS(status);
}
