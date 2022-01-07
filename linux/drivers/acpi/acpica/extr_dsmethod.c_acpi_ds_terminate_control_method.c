
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int info_flags; int thread_count; scalar_t__ node; int owner_id; scalar_t__ sync_level; TYPE_3__* mutex; } ;
union acpi_operand_object {TYPE_5__ method; } ;
struct acpi_walk_state {TYPE_6__* method_node; TYPE_1__* thread; } ;
struct acpi_namespace_node {int dummy; } ;
struct TYPE_10__ {int ascii; } ;
struct TYPE_12__ {TYPE_4__ name; } ;
struct TYPE_8__ {scalar_t__ thread_id; int os_mutex; int original_sync_level; int acquisition_depth; } ;
struct TYPE_9__ {TYPE_2__ mutex; } ;
struct TYPE_7__ {int current_sync_level; } ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_INFO (char*) ;
 int ACPI_METHOD_IGNORE_SYNC_LEVEL ;
 int ACPI_METHOD_MODIFIED_NAMESPACE ;
 int ACPI_METHOD_MODULE_LEVEL ;
 int ACPI_METHOD_SERIALIZED ;
 int ACPI_METHOD_SERIALIZED_PENDING ;
 int AE_INFO ;
 int acpi_ds_method_data_delete_all (struct acpi_walk_state*) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_ex_stop_trace_method (struct acpi_namespace_node*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ns_delete_namespace_by_owner (int ) ;
 int acpi_ns_delete_namespace_subtree (TYPE_6__*) ;
 int acpi_os_release_mutex (int ) ;
 int acpi_ut_release_owner_id (int *) ;
 int ds_terminate_control_method ;
 int return_VOID ;

void
acpi_ds_terminate_control_method(union acpi_operand_object *method_desc,
     struct acpi_walk_state *walk_state)
{

 ACPI_FUNCTION_TRACE_PTR(ds_terminate_control_method, walk_state);



 if (!method_desc) {
  return_VOID;
 }

 if (walk_state) {



  acpi_ds_method_data_delete_all(walk_state);
  if (!(method_desc->method.info_flags & ACPI_METHOD_MODULE_LEVEL)
      && (method_desc->method.thread_count == 1)) {



   (void)acpi_ex_exit_interpreter();
   acpi_ns_delete_namespace_subtree(walk_state->
        method_node);
   (void)acpi_ex_enter_interpreter();
   if (method_desc->method.
       info_flags & ACPI_METHOD_MODIFIED_NAMESPACE) {
    (void)acpi_ex_exit_interpreter();
    acpi_ns_delete_namespace_by_owner(method_desc->
          method.
          owner_id);
    (void)acpi_ex_enter_interpreter();
    method_desc->method.info_flags &=
        ~ACPI_METHOD_MODIFIED_NAMESPACE;
   }
  }





  if (method_desc->method.mutex) {



   method_desc->method.mutex->mutex.acquisition_depth--;
   if (!method_desc->method.mutex->mutex.acquisition_depth) {
    walk_state->thread->current_sync_level =
        method_desc->method.mutex->mutex.
        original_sync_level;

    acpi_os_release_mutex(method_desc->method.
            mutex->mutex.os_mutex);
    method_desc->method.mutex->mutex.thread_id = 0;
   }
  }
 }



 if (method_desc->method.thread_count) {
  method_desc->method.thread_count--;
 } else {
  ACPI_ERROR((AE_INFO, "Invalid zero thread count in method"));
 }



 if (method_desc->method.thread_count) {




  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "*** Completed execution of one thread, %u threads remaining\n",
      method_desc->method.thread_count));
 } else {
  if (method_desc->method.
      info_flags & ACPI_METHOD_SERIALIZED_PENDING) {
   if (walk_state) {
    ACPI_INFO(("Marking method %4.4s as Serialized "
        "because of AE_ALREADY_EXISTS error",
        walk_state->method_node->name.
        ascii));
   }
   method_desc->method.info_flags &=
       ~ACPI_METHOD_SERIALIZED_PENDING;

   method_desc->method.info_flags |=
       (ACPI_METHOD_SERIALIZED |
        ACPI_METHOD_IGNORE_SYNC_LEVEL);
   method_desc->method.sync_level = 0;
  }



  if (!
      (method_desc->method.
       info_flags & ACPI_METHOD_MODULE_LEVEL)) {
   acpi_ut_release_owner_id(&method_desc->method.owner_id);
  }
 }

 acpi_ex_stop_trace_method((struct acpi_namespace_node *)method_desc->
      method.node, method_desc, walk_state);

 return_VOID;
}
