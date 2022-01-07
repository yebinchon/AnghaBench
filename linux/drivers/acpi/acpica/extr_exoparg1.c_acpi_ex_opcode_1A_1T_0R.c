
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_OK ;

 int acpi_ex_load_op (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ps_get_opcode_name (int) ;
 int ex_opcode_1A_1T_0R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_1A_1T_0R(struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_operand_object **operand = &walk_state->operands[0];

 ACPI_FUNCTION_TRACE_STR(ex_opcode_1A_1T_0R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 switch (walk_state->opcode) {
 case 128:

  status = acpi_ex_load_op(operand[0], operand[1], walk_state);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }

cleanup:

 return_ACPI_STATUS(status);
}
