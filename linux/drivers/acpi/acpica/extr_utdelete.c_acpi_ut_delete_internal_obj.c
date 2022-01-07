
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_18__ {void* internal_pcc_buffer; } ;
struct TYPE_17__ {int region_context; } ;
struct TYPE_16__ {int handler_flags; int context; int (* setup ) (union acpi_operand_object*,int ,int ,int *) ;union acpi_operand_object* region_list; union acpi_operand_object* next; } ;
struct TYPE_15__ {union acpi_operand_object* next; union acpi_operand_object* handler; TYPE_14__* node; int space_id; } ;
struct TYPE_28__ {int * node; union acpi_operand_object* mutex; } ;
struct TYPE_27__ {int os_mutex; } ;
struct TYPE_26__ {int * os_semaphore; } ;
struct TYPE_25__ {union acpi_operand_object* handler; } ;
struct TYPE_24__ {int gpe_block; } ;
struct TYPE_23__ {void* elements; int count; } ;
struct TYPE_22__ {void* pointer; } ;
struct TYPE_21__ {int type; int flags; } ;
struct TYPE_20__ {void* pointer; } ;
union acpi_operand_object {TYPE_13__ field; TYPE_12__ extra; TYPE_11__ address_space; TYPE_10__ region; TYPE_9__ method; TYPE_8__ mutex; TYPE_7__ event; TYPE_6__ common_notify; TYPE_5__ device; TYPE_4__ package; TYPE_3__ buffer; TYPE_2__ common; TYPE_1__ string; } ;
struct TYPE_19__ {int flags; } ;


 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;
 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (void*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_GET_FUNCTION_NAME ;
 int ACPI_REGION_DEACTIVATE ;
 int AE_INFO ;
 int ANOBJ_TEMPORARY ;
 int AOPOBJ_STATIC_POINTER ;
 int acpi_ev_delete_gpe_block (int ) ;
 int acpi_ex_unlink_mutex (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int * acpi_gbl_global_lock_semaphore ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_os_delete_mutex (int ) ;
 int acpi_os_delete_semaphore (int *) ;
 int acpi_ut_delete_object_desc (union acpi_operand_object*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_remove_address_range (int ,TYPE_14__*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_VOID ;
 int stub1 (union acpi_operand_object*,int ,int ,int *) ;
 int ut_delete_internal_obj ;

__attribute__((used)) static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
{
 void *obj_pointer = ((void*)0);
 union acpi_operand_object *handler_desc;
 union acpi_operand_object *second_desc;
 union acpi_operand_object *next_desc;
 union acpi_operand_object *start_desc;
 union acpi_operand_object **last_obj_ptr;

 ACPI_FUNCTION_TRACE_PTR(ut_delete_internal_obj, object);

 if (!object) {
  return_VOID;
 }





 switch (object->common.type) {
 case 129:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "**** String %p, ptr %p\n", object,
      object->string.pointer));



  if (!(object->common.flags & AOPOBJ_STATIC_POINTER)) {



   obj_pointer = object->string.pointer;
  }
  break;

 case 139:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "**** Buffer %p, ptr %p\n", object,
      object->buffer.pointer));



  if (!(object->common.flags & AOPOBJ_STATIC_POINTER)) {



   obj_pointer = object->buffer.pointer;
  }
  break;

 case 132:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      " **** Package of count %X\n",
      object->package.count));
  obj_pointer = object->package.elements;
  break;





 case 137:

  if (object->device.gpe_block) {
   (void)acpi_ev_delete_gpe_block(object->device.
             gpe_block);
  }



 case 131:
 case 128:



  handler_desc = object->common_notify.handler;
  while (handler_desc) {
   next_desc = handler_desc->address_space.next;
   acpi_ut_remove_reference(handler_desc);
   handler_desc = next_desc;
  }
  break;

 case 133:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "***** Mutex %p, OS Mutex %p\n",
      object, object->mutex.os_mutex));

  if (object == acpi_gbl_global_lock_mutex) {



   (void)
       acpi_os_delete_semaphore
       (acpi_gbl_global_lock_semaphore);
   acpi_gbl_global_lock_semaphore = ((void*)0);

   acpi_os_delete_mutex(object->mutex.os_mutex);
   acpi_gbl_global_lock_mutex = ((void*)0);
  } else {
   acpi_ex_unlink_mutex(object);
   acpi_os_delete_mutex(object->mutex.os_mutex);
  }
  break;

 case 136:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "***** Event %p, OS Semaphore %p\n",
      object, object->event.os_semaphore));

  (void)acpi_os_delete_semaphore(object->event.os_semaphore);
  object->event.os_semaphore = ((void*)0);
  break;

 case 134:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "***** Method %p\n", object));



  if (object->method.mutex) {
   acpi_os_delete_mutex(object->method.mutex->mutex.
          os_mutex);
   acpi_ut_delete_object_desc(object->method.mutex);
   object->method.mutex = ((void*)0);
  }

  if (object->method.node) {
   object->method.node = ((void*)0);
  }
  break;

 case 130:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "***** Region %p\n", object));





  if (!(object->region.node->flags & ANOBJ_TEMPORARY)) {
   acpi_ut_remove_address_range(object->region.space_id,
           object->region.node);
  }

  second_desc = acpi_ns_get_secondary_object(object);
  if (second_desc) {





   handler_desc = object->region.handler;
   if (handler_desc) {
    next_desc =
        handler_desc->address_space.region_list;
    start_desc = next_desc;
    last_obj_ptr =
        &handler_desc->address_space.region_list;



    while (next_desc) {
     if (next_desc == object) {
      *last_obj_ptr =
          next_desc->region.next;
      break;
     }



     last_obj_ptr = &next_desc->region.next;
     next_desc = next_desc->region.next;



     if (next_desc == start_desc) {
      ACPI_ERROR((AE_INFO,
           "Circular region list in address handler object %p",
           handler_desc));
      return_VOID;
     }
    }

    if (handler_desc->address_space.handler_flags &
        ACPI_ADDR_HANDLER_DEFAULT_INSTALLED) {



     if (handler_desc->address_space.setup) {
      (void)handler_desc->
          address_space.setup(object,
         ACPI_REGION_DEACTIVATE,
         handler_desc->
         address_space.
         context,
         &second_desc->
         extra.
         region_context);
     }
    }

    acpi_ut_remove_reference(handler_desc);
   }



   acpi_ut_delete_object_desc(second_desc);
  }
  if (object->field.internal_pcc_buffer) {
   ACPI_FREE(object->field.internal_pcc_buffer);
  }

  break;

 case 138:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "***** Buffer Field %p\n", object));

  second_desc = acpi_ns_get_secondary_object(object);
  if (second_desc) {
   acpi_ut_delete_object_desc(second_desc);
  }
  break;

 case 135:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "***** Bank Field %p\n", object));

  second_desc = acpi_ns_get_secondary_object(object);
  if (second_desc) {
   acpi_ut_delete_object_desc(second_desc);
  }
  break;

 default:

  break;
 }



 if (obj_pointer) {
  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "Deleting Object Subptr %p\n", obj_pointer));
  ACPI_FREE(obj_pointer);
 }



 ACPI_DEBUG_PRINT_RAW((ACPI_DB_ALLOCATIONS,
         "%s: Deleting Object %p [%s]\n",
         ACPI_GET_FUNCTION_NAME, object,
         acpi_ut_get_object_type_name(object)));

 acpi_ut_delete_object_desc(object);
 return_VOID;
}
