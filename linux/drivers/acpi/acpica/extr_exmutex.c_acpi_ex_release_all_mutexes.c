
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ thread_id; int * owner_thread; scalar_t__ acquisition_depth; union acpi_operand_object* next; int * prev; int original_sync_level; int os_mutex; int sync_level; TYPE_2__* node; } ;
union acpi_operand_object {TYPE_3__ mutex; } ;
struct acpi_thread_state {int current_sync_level; union acpi_operand_object* acquired_mutex_list; } ;
struct TYPE_4__ {int ascii; } ;
struct TYPE_5__ {TYPE_1__ name; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ev_release_global_lock () ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int acpi_os_release_mutex (int ) ;
 int ex_release_all_mutexes ;
 int return_VOID ;

void acpi_ex_release_all_mutexes(struct acpi_thread_state *thread)
{
 union acpi_operand_object *next = thread->acquired_mutex_list;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE(ex_release_all_mutexes);



 while (next) {
  obj_desc = next;
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Mutex [%4.4s] force-release, SyncLevel %u Depth %u\n",
      obj_desc->mutex.node->name.ascii,
      obj_desc->mutex.sync_level,
      obj_desc->mutex.acquisition_depth));



  if (obj_desc == acpi_gbl_global_lock_mutex) {



   (void)acpi_ev_release_global_lock();
  } else {
   acpi_os_release_mutex(obj_desc->mutex.os_mutex);
  }



  thread->current_sync_level =
      obj_desc->mutex.original_sync_level;



  next = obj_desc->mutex.next;

  obj_desc->mutex.prev = ((void*)0);
  obj_desc->mutex.next = ((void*)0);
  obj_desc->mutex.acquisition_depth = 0;
  obj_desc->mutex.owner_thread = ((void*)0);
  obj_desc->mutex.thread_id = 0;
 }

 return_VOID;
}
