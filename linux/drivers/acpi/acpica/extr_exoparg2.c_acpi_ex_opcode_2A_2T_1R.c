
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; union acpi_operand_object** operands; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;

 int acpi_ex_store (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ps_get_opcode_name (int) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_divide (int ,int ,int *,int *) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_opcode_2A_2T_1R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_2A_2T_1R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *return_desc1 = ((void*)0);
 union acpi_operand_object *return_desc2 = ((void*)0);
 acpi_status status;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_2A_2T_1R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 switch (walk_state->opcode) {
 case 128:



  return_desc1 =
      acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!return_desc1) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }

  return_desc2 =
      acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!return_desc2) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }



  status = acpi_ut_divide(operand[0]->integer.value,
     operand[1]->integer.value,
     &return_desc1->integer.value,
     &return_desc2->integer.value);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X",
       walk_state->opcode));

  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }



 status = acpi_ex_store(return_desc2, operand[2], walk_state);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }

 status = acpi_ex_store(return_desc1, operand[3], walk_state);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }

cleanup:




 acpi_ut_remove_reference(return_desc2);

 if (ACPI_FAILURE(status)) {



  acpi_ut_remove_reference(return_desc1);
 }



 else {
  walk_state->result_obj = return_desc1;
 }

 return_ACPI_STATUS(status);
}
