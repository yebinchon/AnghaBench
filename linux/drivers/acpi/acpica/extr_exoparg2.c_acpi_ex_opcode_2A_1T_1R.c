
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int target_type; union acpi_operand_object* object; int * where; int * index_pointer; int class; int value; } ;
struct TYPE_14__ {int type; } ;
struct TYPE_13__ {size_t count; int * elements; } ;
struct TYPE_11__ {size_t length; int * pointer; } ;
struct TYPE_10__ {size_t length; int pointer; } ;
struct TYPE_9__ {size_t value; } ;
union acpi_operand_object {TYPE_5__ reference; TYPE_7__ common; TYPE_6__ package; TYPE_4__ buffer; TYPE_3__ string; TYPE_2__ integer; } ;
typedef size_t u64 ;
typedef int u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; TYPE_1__* op_info; union acpi_operand_object** operands; } ;
typedef int acpi_status ;
typedef size_t acpi_size ;
struct TYPE_8__ {int flags; } ;


 int ACPI_BIOS_EXCEPTION (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (size_t) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_REFCLASS_INDEX ;
 scalar_t__ ACPI_SUCCESS (int ) ;

 void* ACPI_TYPE_BUFFER_FIELD ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_LOCAL_REFERENCE ;


 int AE_AML_BAD_OPCODE ;
 int AE_AML_BUFFER_LIMIT ;
 int AE_AML_INTERNAL ;
 int AE_AML_PACKAGE_LIMIT ;
 int AE_AML_STRING_LIMIT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;



 int AML_MATH ;


 int acpi_ex_concat_template (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_do_concatenate (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 size_t acpi_ex_do_math_op (int,size_t,size_t) ;
 int acpi_ex_store (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ps_get_opcode_name (int) ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 union acpi_operand_object* acpi_ut_create_string_object (size_t) ;
 int acpi_ut_divide (size_t,size_t,int *,size_t*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_opcode_2A_1T_1R ;
 int memcpy (int ,int *,size_t) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_2A_1T_1R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *return_desc = ((void*)0);
 u64 index;
 acpi_status status = AE_OK;
 acpi_size length = 0;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_2A_1T_1R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 if (walk_state->op_info->flags & AML_MATH) {



  return_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }

  return_desc->integer.value =
      acpi_ex_do_math_op(walk_state->opcode,
           operand[0]->integer.value,
           operand[1]->integer.value);
  goto store_result_to_target;
 }

 switch (walk_state->opcode) {
 case 129:

  return_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }



  status = acpi_ut_divide(operand[0]->integer.value,
     operand[1]->integer.value,
     ((void*)0), &return_desc->integer.value);
  break;

 case 132:

  status =
      acpi_ex_do_concatenate(operand[0], operand[1], &return_desc,
        walk_state);
  break;

 case 128:
  while ((length < operand[0]->buffer.length) &&
         (length < operand[1]->integer.value) &&
         (operand[0]->buffer.pointer[length])) {
   length++;
  }



  return_desc = acpi_ut_create_string_object(length);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }





  memcpy(return_desc->string.pointer,
         operand[0]->buffer.pointer, length);
  break;

 case 131:



  status =
      acpi_ex_concat_template(operand[0], operand[1],
         &return_desc, walk_state);
  break;

 case 130:



  return_desc =
      acpi_ut_create_internal_object(ACPI_TYPE_LOCAL_REFERENCE);
  if (!return_desc) {
   status = AE_NO_MEMORY;
   goto cleanup;
  }



  index = operand[1]->integer.value;
  return_desc->reference.value = (u32) index;
  return_desc->reference.class = ACPI_REFCLASS_INDEX;





  switch ((operand[0])->common.type) {
  case 133:

   if (index >= operand[0]->string.length) {
    length = operand[0]->string.length;
    status = AE_AML_STRING_LIMIT;
   }

   return_desc->reference.target_type =
       ACPI_TYPE_BUFFER_FIELD;
   return_desc->reference.index_pointer =
       &(operand[0]->buffer.pointer[index]);
   break;

  case 135:

   if (index >= operand[0]->buffer.length) {
    length = operand[0]->buffer.length;
    status = AE_AML_BUFFER_LIMIT;
   }

   return_desc->reference.target_type =
       ACPI_TYPE_BUFFER_FIELD;
   return_desc->reference.index_pointer =
       &(operand[0]->buffer.pointer[index]);
   break;

  case 134:

   if (index >= operand[0]->package.count) {
    length = operand[0]->package.count;
    status = AE_AML_PACKAGE_LIMIT;
   }

   return_desc->reference.target_type = 134;
   return_desc->reference.where =
       &operand[0]->package.elements[index];
   break;

  default:

   ACPI_ERROR((AE_INFO,
        "Invalid object type: %X",
        (operand[0])->common.type));
   status = AE_AML_INTERNAL;
   goto cleanup;
  }



  if (ACPI_FAILURE(status)) {
   ACPI_BIOS_EXCEPTION((AE_INFO, status,
          "Index (0x%X%8.8X) is beyond end of object (length 0x%X)",
          ACPI_FORMAT_UINT64(index),
          (u32)length));
   goto cleanup;
  }





  return_desc->reference.object = operand[0];
  acpi_ut_add_reference(operand[0]);



  status = acpi_ex_store(return_desc, operand[2], walk_state);



  walk_state->result_obj = return_desc;
  goto cleanup;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
  break;
 }

store_result_to_target:

 if (ACPI_SUCCESS(status)) {




  status = acpi_ex_store(return_desc, operand[2], walk_state);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  if (!walk_state->result_obj) {
   walk_state->result_obj = return_desc;
  }
 }

cleanup:



 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(return_desc);
  walk_state->result_obj = ((void*)0);
 }

 return_ACPI_STATUS(status);
}
