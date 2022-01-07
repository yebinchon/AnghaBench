
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {union acpi_operand_object* object; int class; } ;
struct TYPE_19__ {union acpi_operand_object* data_obj; union acpi_operand_object* index_obj; } ;
struct TYPE_18__ {union acpi_operand_object* region_obj; union acpi_operand_object* bank_obj; } ;
struct TYPE_17__ {union acpi_operand_object* region_obj; } ;
struct TYPE_16__ {union acpi_operand_object* buffer_obj; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {size_t count; union acpi_operand_object** elements; } ;
struct TYPE_13__ {union acpi_operand_object** next; } ;
struct TYPE_12__ {union acpi_operand_object** notify_list; } ;
union acpi_operand_object {TYPE_9__ reference; TYPE_8__ index_field; TYPE_7__ bank_field; TYPE_6__ field; TYPE_5__ buffer_field; TYPE_4__ common; TYPE_3__ package; TYPE_2__ notify; TYPE_1__ common_notify; } ;
struct TYPE_11__ {union acpi_operand_object* object; } ;
union acpi_generic_state {TYPE_10__ update; } ;
typedef size_t u32 ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 size_t ACPI_NUM_NOTIFY_TYPES ;
 int ACPI_REFCLASS_INDEX ;
 int ACPI_REFCLASS_NAME ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ut_create_update_state_and_push (union acpi_operand_object*,int ,union acpi_generic_state**) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_pop_generic_state (union acpi_generic_state**) ;
 int acpi_ut_update_ref_count (union acpi_operand_object*,int ) ;
 int ut_update_object_reference ;

acpi_status
acpi_ut_update_object_reference(union acpi_operand_object *object, u16 action)
{
 acpi_status status = AE_OK;
 union acpi_generic_state *state_list = ((void*)0);
 union acpi_operand_object *next_object = ((void*)0);
 union acpi_operand_object *prev_object;
 union acpi_generic_state *state;
 u32 i;

 ACPI_FUNCTION_NAME(ut_update_object_reference);

 while (object) {



  if (ACPI_GET_DESCRIPTOR_TYPE(object) == ACPI_DESC_TYPE_NAMED) {
   ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
       "Object %p is NS handle\n", object));
   return (AE_OK);
  }





  switch (object->common.type) {
  case 139:
  case 131:
  case 132:
  case 128:




   for (i = 0; i < ACPI_NUM_NOTIFY_TYPES; i++) {
    prev_object =
        object->common_notify.notify_list[i];
    while (prev_object) {
     next_object =
         prev_object->notify.next[i];
     acpi_ut_update_ref_count(prev_object,
         action);
     prev_object = next_object;
    }
   }
   break;

  case 133:




   for (i = 0; i < object->package.count; i++) {




    next_object = object->package.elements[i];
    if (!next_object) {
     continue;
    }

    switch (next_object->common.type) {
    case 138:
    case 129:
    case 141:





     acpi_ut_update_ref_count(next_object,
         action);
     break;

    default:




     status =
         acpi_ut_create_update_state_and_push
         (next_object, action, &state_list);
     if (ACPI_FAILURE(status)) {
      goto error_exit;
     }
     break;
    }
   }
   next_object = ((void*)0);
   break;

  case 140:

   next_object = object->buffer_field.buffer_obj;
   break;

  case 134:

   next_object = object->field.region_obj;
   break;

  case 137:

   next_object = object->bank_field.bank_obj;
   status =
       acpi_ut_create_update_state_and_push(object->
         bank_field.
         region_obj,
         action,
         &state_list);
   if (ACPI_FAILURE(status)) {
    goto error_exit;
   }
   break;

  case 136:

   next_object = object->index_field.index_obj;
   status =
       acpi_ut_create_update_state_and_push(object->
         index_field.
         data_obj,
         action,
         &state_list);
   if (ACPI_FAILURE(status)) {
    goto error_exit;
   }
   break;

  case 135:





   if ((object->reference.class == ACPI_REFCLASS_INDEX) ||
       (object->reference.class == ACPI_REFCLASS_NAME)) {
    next_object = object->reference.object;
   }
   break;

  case 130:
  default:

   break;
  }






  acpi_ut_update_ref_count(object, action);
  object = ((void*)0);



  if (next_object) {
   object = next_object;
   next_object = ((void*)0);
  } else if (state_list) {
   state = acpi_ut_pop_generic_state(&state_list);
   object = state->update.object;
   acpi_ut_delete_generic_state(state);
  }
 }

 return (AE_OK);

error_exit:

 ACPI_EXCEPTION((AE_INFO, status,
   "Could not update object reference count"));



 while (state_list) {
  state = acpi_ut_pop_generic_state(&state_list);
  acpi_ut_delete_generic_state(state);
 }

 return (status);
}
