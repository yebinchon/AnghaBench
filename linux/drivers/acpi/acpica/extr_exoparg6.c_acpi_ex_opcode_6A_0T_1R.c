
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t value; } ;
struct TYPE_3__ {size_t count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ package; } ;
typedef size_t u64 ;
typedef int u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; union acpi_operand_object** operands; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (size_t) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_UINT64_MAX ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_AML_PACKAGE_LIMIT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;


 size_t MAX_MATCH_OPERATOR ;
 int acpi_ex_do_match (int ,union acpi_operand_object*,union acpi_operand_object*) ;
 int acpi_ex_load_table_op (struct acpi_walk_state*,union acpi_operand_object**) ;
 int acpi_ps_get_opcode_name (int) ;
 union acpi_operand_object* acpi_ut_create_integer_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_opcode_6A_0T_1R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_6A_0T_1R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *return_desc = ((void*)0);
 acpi_status status = AE_OK;
 u64 index;
 union acpi_operand_object *this_element;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_6A_0T_1R,
    acpi_ps_get_opcode_name(walk_state->opcode));

 switch (walk_state->opcode) {
 case 128:







  if ((operand[1]->integer.value > MAX_MATCH_OPERATOR) ||
      (operand[3]->integer.value > MAX_MATCH_OPERATOR)) {
   ACPI_ERROR((AE_INFO, "Match operator out of range"));
   status = AE_AML_OPERAND_VALUE;
   goto cleanup;
  }



  index = operand[5]->integer.value;
  if (index >= operand[0]->package.count) {
   ACPI_ERROR((AE_INFO,
        "Index (0x%8.8X%8.8X) beyond package end (0x%X)",
        ACPI_FORMAT_UINT64(index),
        operand[0]->package.count));
   status = AE_AML_PACKAGE_LIMIT;
   goto cleanup;
  }




  return_desc = acpi_ut_create_integer_object(ACPI_UINT64_MAX);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;

  }
  for (; index < operand[0]->package.count; index++) {



   this_element = operand[0]->package.elements[index];



   if (!this_element) {
    continue;
   }






   if (!acpi_ex_do_match((u32) operand[1]->integer.value,
           this_element, operand[2])) {
    continue;
   }

   if (!acpi_ex_do_match((u32) operand[3]->integer.value,
           this_element, operand[4])) {
    continue;
   }



   return_desc->integer.value = index;
   break;
  }
  break;

 case 129:

  status = acpi_ex_load_table_op(walk_state, &return_desc);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X",
       walk_state->opcode));

  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }

cleanup:



 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(return_desc);
 }



 else {
  walk_state->result_obj = return_desc;
 }

 return_ACPI_STATUS(status);
}
