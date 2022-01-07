
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {scalar_t__ num_operands; size_t operand_index; void** operands; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_OBJ_NUM_OPERANDS ;
 int AE_INFO ;
 int AE_OK ;
 int AE_STACK_OVERFLOW ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ds_obj_stack_push ;

acpi_status
acpi_ds_obj_stack_push(void *object, struct acpi_walk_state *walk_state)
{
 ACPI_FUNCTION_NAME(ds_obj_stack_push);



 if (walk_state->num_operands >= ACPI_OBJ_NUM_OPERANDS) {
  ACPI_ERROR((AE_INFO,
       "Object stack overflow! Obj=%p State=%p #Ops=%u",
       object, walk_state, walk_state->num_operands));
  return (AE_STACK_OVERFLOW);
 }



 walk_state->operands[walk_state->operand_index] = object;
 walk_state->num_operands++;



 walk_state->operand_index++;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Obj=%p [%s] State=%p #Ops=%X\n",
     object,
     acpi_ut_get_object_type_name((union
       acpi_operand_object *)
             object), walk_state,
     walk_state->num_operands));

 return (AE_OK);
}
