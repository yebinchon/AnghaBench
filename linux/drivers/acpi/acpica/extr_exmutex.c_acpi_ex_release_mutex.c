
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sync_level; int acquisition_depth; int node; struct acpi_thread_state* owner_thread; } ;
union acpi_operand_object {TYPE_4__ mutex; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_walk_state {TYPE_3__* thread; } ;
struct acpi_thread_state {scalar_t__ thread_id; scalar_t__ current_sync_level; TYPE_2__* acquired_mutex_list; } ;
typedef int acpi_status ;
struct TYPE_7__ {scalar_t__ thread_id; int current_sync_level; } ;
struct TYPE_5__ {scalar_t__ original_sync_level; } ;
struct TYPE_6__ {TYPE_1__ mutex; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_MUTEX_NOT_ACQUIRED ;
 int AE_AML_MUTEX_ORDER ;
 int AE_AML_NOT_OWNER ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ex_release_mutex_object (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int acpi_ut_get_node_name (int ) ;
 int ex_release_mutex ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_release_mutex(union acpi_operand_object *obj_desc,
        struct acpi_walk_state *walk_state)
{
 u8 previous_sync_level;
 struct acpi_thread_state *owner_thread;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_release_mutex);

 if (!obj_desc) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 owner_thread = obj_desc->mutex.owner_thread;



 if (!owner_thread) {
  ACPI_ERROR((AE_INFO,
       "Cannot release Mutex [%4.4s], not acquired",
       acpi_ut_get_node_name(obj_desc->mutex.node)));
  return_ACPI_STATUS(AE_AML_MUTEX_NOT_ACQUIRED);
 }



 if (!walk_state->thread) {
  ACPI_ERROR((AE_INFO,
       "Cannot release Mutex [%4.4s], null thread info",
       acpi_ut_get_node_name(obj_desc->mutex.node)));
  return_ACPI_STATUS(AE_AML_INTERNAL);
 }





 if ((owner_thread->thread_id != walk_state->thread->thread_id) &&
     (obj_desc != acpi_gbl_global_lock_mutex)) {
  ACPI_ERROR((AE_INFO,
       "Thread %u cannot release Mutex [%4.4s] acquired by thread %u",
       (u32)walk_state->thread->thread_id,
       acpi_ut_get_node_name(obj_desc->mutex.node),
       (u32)owner_thread->thread_id));
  return_ACPI_STATUS(AE_AML_NOT_OWNER);
 }
 if (obj_desc->mutex.sync_level != owner_thread->current_sync_level) {
  ACPI_ERROR((AE_INFO,
       "Cannot release Mutex [%4.4s], SyncLevel mismatch: "
       "mutex %u current %u",
       acpi_ut_get_node_name(obj_desc->mutex.node),
       obj_desc->mutex.sync_level,
       walk_state->thread->current_sync_level));
  return_ACPI_STATUS(AE_AML_MUTEX_ORDER);
 }






 previous_sync_level =
     owner_thread->acquired_mutex_list->mutex.original_sync_level;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Releasing: Object SyncLevel %u, Thread SyncLevel %u, "
     "Prev SyncLevel %u, Depth %u TID %p\n",
     obj_desc->mutex.sync_level,
     walk_state->thread->current_sync_level,
     previous_sync_level,
     obj_desc->mutex.acquisition_depth,
     walk_state->thread));

 status = acpi_ex_release_mutex_object(obj_desc);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 if (obj_desc->mutex.acquisition_depth == 0) {



  owner_thread->current_sync_level = previous_sync_level;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Released: Object SyncLevel %u, Thread SyncLevel, %u, "
     "Prev SyncLevel %u, Depth %u\n",
     obj_desc->mutex.sync_level,
     walk_state->thread->current_sync_level,
     previous_sync_level,
     obj_desc->mutex.acquisition_depth));

 return_ACPI_STATUS(status);
}
