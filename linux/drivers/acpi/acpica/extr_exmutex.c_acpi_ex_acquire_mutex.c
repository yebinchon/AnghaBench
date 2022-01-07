
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sync_level; int acquisition_depth; scalar_t__ original_sync_level; TYPE_3__* owner_thread; int node; } ;
struct TYPE_4__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_2__ mutex; TYPE_1__ integer; } ;
typedef int u16 ;
struct acpi_walk_state {TYPE_3__* thread; } ;
typedef int acpi_status ;
struct TYPE_6__ {scalar_t__ current_sync_level; int thread_id; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_MUTEX_ORDER ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int acpi_ex_acquire_mutex_object (int ,union acpi_operand_object*,int ) ;
 int acpi_ex_link_mutex (union acpi_operand_object*,TYPE_3__*) ;
 int acpi_ut_get_node_name (int ) ;
 int ex_acquire_mutex ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_acquire_mutex(union acpi_operand_object *time_desc,
        union acpi_operand_object *obj_desc,
        struct acpi_walk_state *walk_state)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ex_acquire_mutex, obj_desc);

 if (!obj_desc) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 if (!walk_state->thread) {
  ACPI_ERROR((AE_INFO,
       "Cannot acquire Mutex [%4.4s], null thread info",
       acpi_ut_get_node_name(obj_desc->mutex.node)));
  return_ACPI_STATUS(AE_AML_INTERNAL);
 }





 if (walk_state->thread->current_sync_level > obj_desc->mutex.sync_level) {
  ACPI_ERROR((AE_INFO,
       "Cannot acquire Mutex [%4.4s], "
       "current SyncLevel is too large (%u)",
       acpi_ut_get_node_name(obj_desc->mutex.node),
       walk_state->thread->current_sync_level));
  return_ACPI_STATUS(AE_AML_MUTEX_ORDER);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Acquiring: Mutex SyncLevel %u, Thread SyncLevel %u, "
     "Depth %u TID %p\n",
     obj_desc->mutex.sync_level,
     walk_state->thread->current_sync_level,
     obj_desc->mutex.acquisition_depth,
     walk_state->thread));

 status = acpi_ex_acquire_mutex_object((u16)time_desc->integer.value,
           obj_desc,
           walk_state->thread->thread_id);

 if (ACPI_SUCCESS(status) && obj_desc->mutex.acquisition_depth == 1) {



  obj_desc->mutex.owner_thread = walk_state->thread;
  obj_desc->mutex.original_sync_level =
      walk_state->thread->current_sync_level;
  walk_state->thread->current_sync_level =
      obj_desc->mutex.sync_level;



  acpi_ex_link_mutex(obj_desc, walk_state->thread);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Acquired: Mutex SyncLevel %u, Thread SyncLevel %u, Depth %u\n",
     obj_desc->mutex.sync_level,
     walk_state->thread->current_sync_level,
     obj_desc->mutex.acquisition_depth));

 return_ACPI_STATUS(status);
}
