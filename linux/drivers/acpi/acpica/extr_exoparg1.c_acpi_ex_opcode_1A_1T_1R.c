
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef int u64 ;
typedef int u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_EXPLICIT_CONVERT_DECIMAL ;
 int ACPI_EXPLICIT_CONVERT_HEX ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_INTEGER_BIT_SIZE ;
 int ACPI_MUL_4 (int) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_UINT64_MAX ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_NUMERIC_OVERFLOW ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SUPPORT ;
 int acpi_ex_convert_to_buffer (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ex_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_convert_to_string (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_get_object_reference (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_store (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_gbl_integer_nybble_width ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_ps_get_opcode_name (int) ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_copy_iobject_to_iobject (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int acpi_ut_short_divide (int,int,int*,int*) ;
 int ex_opcode_1A_1T_1R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_1A_1T_1R(struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *return_desc = ((void*)0);
 union acpi_operand_object *return_desc2 = ((void*)0);
 u32 temp32;
 u32 i;
 u64 power_of_ten;
 u64 digit;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_1A_1T_1R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 switch (walk_state->opcode) {
 case 141:
 case 138:
 case 137:
 case 136:
 case 132:
 case 140:



  return_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }

  switch (walk_state->opcode) {
  case 141:

   return_desc->integer.value = ~operand[0]->integer.value;
   break;

  case 138:

   return_desc->integer.value = operand[0]->integer.value;





   for (temp32 = 0; return_desc->integer.value &&
        temp32 < ACPI_INTEGER_BIT_SIZE; ++temp32) {
    return_desc->integer.value >>= 1;
   }

   return_desc->integer.value = temp32;
   break;

  case 137:

   return_desc->integer.value = operand[0]->integer.value;





   for (temp32 = 0; return_desc->integer.value &&
        temp32 < ACPI_INTEGER_BIT_SIZE; ++temp32) {
    return_desc->integer.value <<= 1;
   }



   return_desc->integer.value =
       temp32 ==
       0 ? 0 : (ACPI_INTEGER_BIT_SIZE + 1) - temp32;
   break;

  case 136:





   power_of_ten = 1;
   return_desc->integer.value = 0;
   digit = operand[0]->integer.value;



   for (i = 0;
        (i < acpi_gbl_integer_nybble_width) && (digit > 0);
        i++) {



    temp32 = ((u32) digit) & 0xF;



    if (temp32 > 9) {
     ACPI_ERROR((AE_INFO,
          "BCD digit too large (not decimal): 0x%X",
          temp32));

     status = AE_AML_NUMERIC_OVERFLOW;
     goto cleanup;
    }



    return_desc->integer.value +=
        (((u64) temp32) * power_of_ten);



    digit >>= 4;



    power_of_ten *= 10;
   }
   break;

  case 132:

   return_desc->integer.value = 0;
   digit = operand[0]->integer.value;



   for (i = 0;
        (i < acpi_gbl_integer_nybble_width) && (digit > 0);
        i++) {
    (void)acpi_ut_short_divide(digit, 10, &digit,
          &temp32);





    return_desc->integer.value |=
        (((u64) temp32) << ACPI_MUL_4(i));
   }



   if (digit > 0) {
    ACPI_ERROR((AE_INFO,
         "Integer too large to convert to BCD: 0x%8.8X%8.8X",
         ACPI_FORMAT_UINT64(operand[0]->
              integer.value)));
    status = AE_AML_NUMERIC_OVERFLOW;
    goto cleanup;
   }
   break;

  case 140:





   if ((struct acpi_namespace_node *)operand[0] ==
       acpi_gbl_root_node) {




    return_desc->integer.value = 0;
    goto cleanup;
   }



   status = acpi_ex_get_object_reference(operand[0],
             &return_desc2,
             walk_state);
   if (ACPI_FAILURE(status)) {
    goto cleanup;
   }

   status =
       acpi_ex_store(return_desc2, operand[1], walk_state);
   acpi_ut_remove_reference(return_desc2);



   return_desc->integer.value = ACPI_UINT64_MAX;
   goto cleanup;

  default:



   break;
  }
  break;

 case 133:





  status = acpi_ex_store(operand[0], operand[1], walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }



  if (!walk_state->result_obj) {






   walk_state->result_obj = operand[0];
   walk_state->operands[0] = ((void*)0);
  }
  return_ACPI_STATUS(status);




 case 139:

  status =
      acpi_ut_copy_iobject_to_iobject(operand[0], &return_desc,
          walk_state);
  break;

 case 130:

  status =
      acpi_ex_convert_to_string(operand[0], &return_desc,
           ACPI_EXPLICIT_CONVERT_DECIMAL);
  if (return_desc == operand[0]) {



   acpi_ut_add_reference(return_desc);
  }
  break;

 case 129:

  status =
      acpi_ex_convert_to_string(operand[0], &return_desc,
           ACPI_EXPLICIT_CONVERT_HEX);
  if (return_desc == operand[0]) {



   acpi_ut_add_reference(return_desc);
  }
  break;

 case 131:

  status = acpi_ex_convert_to_buffer(operand[0], &return_desc);
  if (return_desc == operand[0]) {



   acpi_ut_add_reference(return_desc);
  }
  break;

 case 128:



  status =
      acpi_ex_convert_to_integer(operand[0], &return_desc, 0);
  if (return_desc == operand[0]) {



   acpi_ut_add_reference(return_desc);
  }
  break;

 case 135:
 case 134:



  ACPI_ERROR((AE_INFO,
       "%s is obsolete and not implemented",
       acpi_ps_get_opcode_name(walk_state->opcode)));
  status = AE_SUPPORT;
  goto cleanup;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  goto cleanup;
 }

 if (ACPI_SUCCESS(status)) {



  status = acpi_ex_store(return_desc, operand[1], walk_state);
 }

cleanup:



 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(return_desc);
 }



 else if (!walk_state->result_obj) {
  walk_state->result_obj = return_desc;
 }

 return_ACPI_STATUS(status);
}
