
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ common; } ;
struct acpi_walk_state {TYPE_4__* control_state; int op; union acpi_operand_object** operands; } ;
typedef int acpi_status ;
struct TYPE_7__ {scalar_t__ state; int value; } ;
struct TYPE_8__ {TYPE_3__ common; } ;


 scalar_t__ ACPI_CONTROL_NORMAL ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_IMPLICIT_CONVERSION ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_CTRL_FALSE ;
 int AE_INFO ;
 int AE_OK ;
 int FALSE ;
 int TRUE ;
 int acpi_db_display_result_object (union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ds_create_operand (struct acpi_walk_state*,int ,int ) ;
 int acpi_ds_do_implicit_return (union acpi_operand_object*,struct acpi_walk_state*,int ) ;
 int acpi_ds_result_pop (union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_resolve_to_value (union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_truncate_for32bit_table (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_get_predicate_value ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_get_predicate_value(struct acpi_walk_state *walk_state,
       union acpi_operand_object *result_obj)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *local_obj_desc = ((void*)0);

 ACPI_FUNCTION_TRACE_PTR(ds_get_predicate_value, walk_state);

 walk_state->control_state->common.state = 0;

 if (result_obj) {
  status = acpi_ds_result_pop(&obj_desc, walk_state);
  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status,
     "Could not get result from predicate evaluation"));

   return_ACPI_STATUS(status);
  }
 } else {
  status = acpi_ds_create_operand(walk_state, walk_state->op, 0);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  status =
      acpi_ex_resolve_to_value(&walk_state->operands[0],
          walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  obj_desc = walk_state->operands[0];
 }

 if (!obj_desc) {
  ACPI_ERROR((AE_INFO,
       "No predicate ObjDesc=%p State=%p",
       obj_desc, walk_state));

  return_ACPI_STATUS(AE_AML_NO_OPERAND);
 }





 status = acpi_ex_convert_to_integer(obj_desc, &local_obj_desc,
         ACPI_IMPLICIT_CONVERSION);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }

 if (local_obj_desc->common.type != ACPI_TYPE_INTEGER) {
  ACPI_ERROR((AE_INFO,
       "Bad predicate (not an integer) ObjDesc=%p State=%p Type=0x%X",
       obj_desc, walk_state, obj_desc->common.type));

  status = AE_AML_OPERAND_TYPE;
  goto cleanup;
 }



 (void)acpi_ex_truncate_for32bit_table(local_obj_desc);





 if (local_obj_desc->integer.value) {
  walk_state->control_state->common.value = TRUE;
 } else {




  walk_state->control_state->common.value = FALSE;
  status = AE_CTRL_FALSE;
 }



 (void)acpi_ds_do_implicit_return(local_obj_desc, walk_state, TRUE);

cleanup:

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Completed a predicate eval=%X Op=%p\n",
     walk_state->control_state->common.value,
     walk_state->op));



 acpi_db_display_result_object(local_obj_desc, walk_state);





 if (local_obj_desc != obj_desc) {
  acpi_ut_remove_reference(local_obj_desc);
 }
 acpi_ut_remove_reference(obj_desc);

 walk_state->control_state->common.state = ACPI_CONTROL_NORMAL;
 return_ACPI_STATUS(status);
}
