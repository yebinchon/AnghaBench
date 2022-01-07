
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {union acpi_operand_object** obj_desc; } ;
union acpi_generic_state {TYPE_1__ results; } ;
typedef size_t u32 ;
struct acpi_walk_state {scalar_t__ result_count; scalar_t__ result_size; int current_result; union acpi_generic_state* results; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ;
 int AE_AML_INTERNAL ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_result_stack_push (struct acpi_walk_state*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ds_result_push ;

acpi_status
acpi_ds_result_push(union acpi_operand_object *object,
      struct acpi_walk_state *walk_state)
{
 union acpi_generic_state *state;
 acpi_status status;
 u32 index;

 ACPI_FUNCTION_NAME(ds_result_push);

 if (walk_state->result_count > walk_state->result_size) {
  ACPI_ERROR((AE_INFO, "Result stack is full"));
  return (AE_AML_INTERNAL);
 } else if (walk_state->result_count == walk_state->result_size) {



  status = acpi_ds_result_stack_push(walk_state);
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO,
        "Failed to extend the result stack"));
   return (status);
  }
 }

 if (!(walk_state->result_count < walk_state->result_size)) {
  ACPI_ERROR((AE_INFO, "No free elements in result stack"));
  return (AE_AML_INTERNAL);
 }

 state = walk_state->results;
 if (!state) {
  ACPI_ERROR((AE_INFO, "No result stack frame during push"));
  return (AE_AML_INTERNAL);
 }

 if (!object) {
  ACPI_ERROR((AE_INFO,
       "Null Object! Obj=%p State=%p Num=%u",
       object, walk_state, walk_state->result_count));
  return (AE_BAD_PARAMETER);
 }



 index = (u32)walk_state->result_count % ACPI_RESULTS_FRAME_OBJ_NUM;
 state->results.obj_desc[index] = object;
 walk_state->result_count++;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Obj=%p [%s] State=%p Num=%X Cur=%X\n",
     object,
     acpi_ut_get_object_type_name((union
       acpi_operand_object *)
             object), walk_state,
     walk_state->result_count,
     walk_state->current_result));

 return (AE_OK);
}
