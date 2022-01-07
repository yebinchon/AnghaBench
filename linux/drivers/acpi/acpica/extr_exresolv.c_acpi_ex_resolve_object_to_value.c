
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_5__ {TYPE_1__* node; int target_type; union acpi_operand_object** where; int value; int class; } ;
union acpi_operand_object {TYPE_3__ common; TYPE_2__ reference; } ;
typedef int u8 ;
struct acpi_walk_state {int opcode; } ;
typedef int acpi_status ;
struct TYPE_4__ {union acpi_operand_object* object; int type; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_DEVICE ;





 int ACPI_TYPE_THERMAL ;
 int AE_AML_INTERNAL ;
 int AE_AML_UNINITIALIZED_ELEMENT ;
 int AE_INFO ;
 int AE_OK ;
 int AML_COPY_OBJECT_OP ;
 int AML_INT_METHODCALL_OP ;
 int acpi_ds_get_buffer_arguments (union acpi_operand_object*) ;
 int acpi_ds_get_package_arguments (union acpi_operand_object*) ;
 int acpi_ds_method_data_get_value (int ,int ,struct acpi_walk_state*,union acpi_operand_object**) ;
 int acpi_ex_read_data_from_field (struct acpi_walk_state*,union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_resolve_object_to_value ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_resolve_object_to_value(union acpi_operand_object **stack_ptr,
    struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *stack_desc;
 union acpi_operand_object *obj_desc = ((void*)0);
 u8 ref_type;

 ACPI_FUNCTION_TRACE(ex_resolve_object_to_value);

 stack_desc = *stack_ptr;



 switch (stack_desc->common.type) {
 case 130:

  ref_type = stack_desc->reference.class;

  switch (ref_type) {
  case 138:
  case 141:




   status = acpi_ds_method_data_get_value(ref_type,
              stack_desc->
              reference.value,
              walk_state,
              &obj_desc);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }

   ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
       "[Arg/Local %X] ValueObj is %p\n",
       stack_desc->reference.value,
       obj_desc));





   acpi_ut_remove_reference(stack_desc);
   *stack_ptr = obj_desc;
   break;

  case 139:

   switch (stack_desc->reference.target_type) {
   case 133:


    break;

   case 128:



    if ((walk_state->opcode ==
         AML_INT_METHODCALL_OP)
        || (walk_state->opcode ==
     AML_COPY_OBJECT_OP)) {
     break;
    }



    obj_desc = *stack_desc->reference.where;
    if (obj_desc) {





     acpi_ut_add_reference(obj_desc);
     *stack_ptr = obj_desc;
    } else {




     ACPI_ERROR((AE_INFO,
          "Attempt to dereference an Index to "
          "NULL package element Idx=%p",
          stack_desc));
     status = AE_AML_UNINITIALIZED_ELEMENT;
    }
    break;

   default:



    ACPI_ERROR((AE_INFO,
         "Unknown TargetType 0x%X in Index/Reference object %p",
         stack_desc->reference.target_type,
         stack_desc));
    status = AE_AML_INTERNAL;
    break;
   }
   break;

  case 136:
  case 140:
  case 135:



   break;

  case 137:



   if ((stack_desc->reference.node->type ==
        ACPI_TYPE_DEVICE)
       || (stack_desc->reference.node->type ==
    ACPI_TYPE_THERMAL)) {



    *stack_ptr = (void *)stack_desc->reference.node;
   } else {


    *stack_ptr =
        (stack_desc->reference.node)->object;
    acpi_ut_add_reference(*stack_ptr);
   }

   acpi_ut_remove_reference(stack_desc);
   break;

  default:

   ACPI_ERROR((AE_INFO,
        "Unknown Reference type 0x%X in %p",
        ref_type, stack_desc));
   status = AE_AML_INTERNAL;
   break;
  }
  break;

 case 134:

  status = acpi_ds_get_buffer_arguments(stack_desc);
  break;

 case 128:

  status = acpi_ds_get_package_arguments(stack_desc);
  break;

 case 133:
 case 129:
 case 132:
 case 131:

  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "FieldRead SourceDesc=%p Type=%X\n",
      stack_desc, stack_desc->common.type));

  status =
      acpi_ex_read_data_from_field(walk_state, stack_desc,
       &obj_desc);



  acpi_ut_remove_reference(*stack_ptr);
  *stack_ptr = (void *)obj_desc;
  break;

 default:

  break;
 }

 return_ACPI_STATUS(status);
}
