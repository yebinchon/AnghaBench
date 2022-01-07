
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int const class; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ reference; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct acpi_walk_state {int num_operands; int operands; } ;
struct acpi_opcode_info {scalar_t__ class; scalar_t__ runtime_args; int name; } ;
struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;


 int ACPI_DUMP_OPERANDS (int ,int ,int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,int ) ;
 int const ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_IMPLICIT_CONVERT_HEX ;







 int ACPI_TYPE_ANY ;



 int ACPI_TYPE_EVENT ;

 int ACPI_TYPE_LOCAL_ALIAS ;




 int ACPI_TYPE_MUTEX ;



 int AE_AML_BAD_OPCODE ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_TYPE ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 scalar_t__ AML_CLASS_UNKNOWN ;
 int AML_DEBUG_OP ;
 int AML_STORE_OP ;
 scalar_t__ ARGI_INVALID_OPCODE ;
 scalar_t__ GET_CURRENT_ARG_TYPE (scalar_t__) ;
 int INCREMENT_ARG_LIST (scalar_t__) ;
 int acpi_ex_check_object_type (int,int,union acpi_operand_object*) ;
 int acpi_ex_convert_to_buffer (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ex_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_convert_to_string (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ex_resolve_to_value (union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_gbl_enable_interpreter_slack ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 struct acpi_opcode_info* acpi_ps_get_opcode_info (int ) ;
 int acpi_ps_get_opcode_name (int ) ;
 int acpi_ut_get_descriptor_name (union acpi_operand_object*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_reference_name (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int acpi_ut_valid_object_type (int) ;
 int ex_resolve_operands ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_resolve_operands(u16 opcode,
    union acpi_operand_object **stack_ptr,
    struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *obj_desc;
 acpi_status status = AE_OK;
 u8 object_type;
 u32 arg_types;
 const struct acpi_opcode_info *op_info;
 u32 this_arg_type;
 acpi_object_type type_needed;
 u16 target_op = 0;

 ACPI_FUNCTION_TRACE_U32(ex_resolve_operands, opcode);

 op_info = acpi_ps_get_opcode_info(opcode);
 if (op_info->class == AML_CLASS_UNKNOWN) {
  return_ACPI_STATUS(AE_AML_BAD_OPCODE);
 }

 arg_types = op_info->runtime_args;
 if (arg_types == ARGI_INVALID_OPCODE) {
  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X", opcode));

  return_ACPI_STATUS(AE_AML_INTERNAL);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Opcode %X [%s] RequiredOperandTypes=%8.8X\n",
     opcode, op_info->name, arg_types));
 while (GET_CURRENT_ARG_TYPE(arg_types)) {
  if (!stack_ptr || !*stack_ptr) {
   ACPI_ERROR((AE_INFO, "Null stack entry at %p",
        stack_ptr));

   return_ACPI_STATUS(AE_AML_INTERNAL);
  }



  obj_desc = *stack_ptr;



  switch (ACPI_GET_DESCRIPTOR_TYPE(obj_desc)) {
  case 170:



   object_type =
       ((struct acpi_namespace_node *)obj_desc)->type;






   if (object_type == ACPI_TYPE_LOCAL_ALIAS) {
    obj_desc = acpi_ns_get_attached_object((struct
         acpi_namespace_node
         *)
               obj_desc);
    *stack_ptr = obj_desc;
    object_type =
        ((struct acpi_namespace_node *)obj_desc)->
        type;
   }
   break;

  case 169:



   object_type = obj_desc->common.type;



   if (!acpi_ut_valid_object_type(object_type)) {
    ACPI_ERROR((AE_INFO,
         "Bad operand object type [0x%X]",
         object_type));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }

   if (object_type == (u8) 155) {



    switch (obj_desc->reference.class) {
    case 167:

     target_op = AML_DEBUG_OP;



    case 168:
    case 165:
    case 166:
    case 163:
    case 162:
    case 164:

     ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
         "Operand is a Reference, Class [%s] %2.2X\n",
         acpi_ut_get_reference_name
         (obj_desc),
         obj_desc->reference.
         class));
     break;

    default:

     ACPI_ERROR((AE_INFO,
          "Unknown Reference Class 0x%2.2X in %p",
          obj_desc->reference.class,
          obj_desc));

     return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
    }
   }
   break;

  default:



   ACPI_ERROR((AE_INFO, "Invalid descriptor %p [%s]",
        obj_desc,
        acpi_ut_get_descriptor_name(obj_desc)));

   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }



  this_arg_type = GET_CURRENT_ARG_TYPE(arg_types);
  INCREMENT_ARG_LIST(arg_types);





  switch (this_arg_type) {
  case 133:

   if ((ACPI_GET_DESCRIPTOR_TYPE(obj_desc) ==
        169) &&
       (obj_desc->common.type == 151)) {




    goto next_operand;
   }







  case 134:
  case 138:
  case 136:
  case 142:
  case 128:
  case 140:
  case 131:
  case 130:





   if (ACPI_GET_DESCRIPTOR_TYPE(obj_desc) ==
       170) {
    goto next_operand;
   }

   status =
       acpi_ex_check_object_type(155,
            object_type, obj_desc);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
   goto next_operand;

  case 144:






   if ((opcode == AML_STORE_OP) &&
       ((*stack_ptr)->common.type ==
        155)
       && ((*stack_ptr)->reference.class ==
    166)) {
    goto next_operand;
   }
   break;

  default:



   break;
  }




  status = acpi_ex_resolve_to_value(stack_ptr, walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }



  obj_desc = *stack_ptr;




  switch (this_arg_type) {




  case 137:



   type_needed = ACPI_TYPE_MUTEX;
   break;

  case 141:



   type_needed = ACPI_TYPE_EVENT;
   break;

  case 135:



   type_needed = 153;
   break;

  case 150:



   type_needed = ACPI_TYPE_ANY;
   break;

  case 143:



   type_needed = 155;
   break;




  case 139:







   status = acpi_ex_convert_to_integer(obj_desc, stack_ptr,
           ACPI_IMPLICIT_CONVERSION);
   if (ACPI_FAILURE(status)) {
    if (status == AE_TYPE) {
     ACPI_ERROR((AE_INFO,
          "Needed [Integer/String/Buffer], found [%s] %p",
          acpi_ut_get_object_type_name
          (obj_desc), obj_desc));

     return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
    }

    return_ACPI_STATUS(status);
   }

   if (obj_desc != *stack_ptr) {
    acpi_ut_remove_reference(obj_desc);
   }
   goto next_operand;

  case 149:





   status = acpi_ex_convert_to_buffer(obj_desc, stack_ptr);
   if (ACPI_FAILURE(status)) {
    if (status == AE_TYPE) {
     ACPI_ERROR((AE_INFO,
          "Needed [Integer/String/Buffer], found [%s] %p",
          acpi_ut_get_object_type_name
          (obj_desc), obj_desc));

     return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
    }

    return_ACPI_STATUS(status);
   }

   if (obj_desc != *stack_ptr) {
    acpi_ut_remove_reference(obj_desc);
   }
   goto next_operand;

  case 129:





   status =
       acpi_ex_convert_to_string(obj_desc, stack_ptr,
            ACPI_IMPLICIT_CONVERT_HEX);
   if (ACPI_FAILURE(status)) {
    if (status == AE_TYPE) {
     ACPI_ERROR((AE_INFO,
          "Needed [Integer/String/Buffer], found [%s] %p",
          acpi_ut_get_object_type_name
          (obj_desc), obj_desc));

     return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
    }

    return_ACPI_STATUS(status);
   }

   if (obj_desc != *stack_ptr) {
    acpi_ut_remove_reference(obj_desc);
   }
   goto next_operand;

  case 146:



   switch (obj_desc->common.type) {
   case 158:
   case 151:
   case 161:


    break;

   default:
    ACPI_ERROR((AE_INFO,
         "Needed [Integer/String/Buffer], found [%s] %p",
         acpi_ut_get_object_type_name
         (obj_desc), obj_desc));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }
   goto next_operand;

  case 148:



   switch (obj_desc->common.type) {
   case 151:
   case 161:


    break;

   case 158:



    status =
        acpi_ex_convert_to_buffer(obj_desc,
             stack_ptr);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }

    if (obj_desc != *stack_ptr) {
     acpi_ut_remove_reference(obj_desc);
    }
    break;

   default:
    ACPI_ERROR((AE_INFO,
         "Needed [Integer/String/Buffer], found [%s] %p",
         acpi_ut_get_object_type_name
         (obj_desc), obj_desc));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }
   goto next_operand;

  case 145:







   switch (obj_desc->common.type) {
   case 153:
   case 151:
   case 161:
   case 155:


    break;

   default:

    ACPI_ERROR((AE_INFO,
         "Needed [Buffer/String/Package/Reference], found [%s] %p",
         acpi_ut_get_object_type_name
         (obj_desc), obj_desc));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }
   goto next_operand;

  case 147:



   switch (obj_desc->common.type) {
   case 153:
   case 151:
   case 161:


    break;

   default:

    ACPI_ERROR((AE_INFO,
         "Needed [Buffer/String/Package], found [%s] %p",
         acpi_ut_get_object_type_name
         (obj_desc), obj_desc));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }
   goto next_operand;

  case 132:





   switch (obj_desc->common.type) {
   case 161:
   case 152:


    break;

   default:

    ACPI_ERROR((AE_INFO,
         "Needed [Region/Buffer], found [%s] %p",
         acpi_ut_get_object_type_name
         (obj_desc), obj_desc));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }
   goto next_operand;

  case 144:



   switch (obj_desc->common.type) {
   case 158:
   case 153:
   case 151:
   case 161:
   case 160:
   case 155:
   case 154:
   case 157:
   case 156:
   case 159:


    break;

   default:

    if (acpi_gbl_enable_interpreter_slack) {





     break;
    }

    if (target_op == AML_DEBUG_OP) {



     break;
    }

    ACPI_ERROR((AE_INFO,
         "Needed Integer/Buffer/String/Package/Ref/Ddb]"
         ", found [%s] %p",
         acpi_ut_get_object_type_name
         (obj_desc), obj_desc));

    return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
   }
   goto next_operand;

  default:



   ACPI_ERROR((AE_INFO,
        "Internal - Unknown ARGI (required operand) type 0x%X",
        this_arg_type));

   return_ACPI_STATUS(AE_BAD_PARAMETER);
  }





  status =
      acpi_ex_check_object_type(type_needed,
           (*stack_ptr)->common.type,
           *stack_ptr);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

next_operand:




  if (GET_CURRENT_ARG_TYPE(arg_types)) {
   stack_ptr--;
  }
 }

 ACPI_DUMP_OPERANDS(walk_state->operands,
      acpi_ps_get_opcode_name(opcode),
      walk_state->num_operands);

 return_ACPI_STATUS(status);
}
