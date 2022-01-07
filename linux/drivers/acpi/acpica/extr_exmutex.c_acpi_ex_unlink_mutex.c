
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* next; int original_sync_level; TYPE_3__* prev; struct acpi_thread_state* owner_thread; } ;
union acpi_operand_object {TYPE_5__ mutex; } ;
struct acpi_thread_state {TYPE_4__* acquired_mutex_list; } ;
struct TYPE_6__ {TYPE_3__* prev; } ;
struct TYPE_9__ {TYPE_1__ mutex; } ;
struct TYPE_7__ {int original_sync_level; TYPE_4__* next; } ;
struct TYPE_8__ {TYPE_2__ mutex; } ;



void acpi_ex_unlink_mutex(union acpi_operand_object *obj_desc)
{
 struct acpi_thread_state *thread = obj_desc->mutex.owner_thread;

 if (!thread) {
  return;
 }



 if (obj_desc->mutex.next) {
  (obj_desc->mutex.next)->mutex.prev = obj_desc->mutex.prev;
 }

 if (obj_desc->mutex.prev) {
  (obj_desc->mutex.prev)->mutex.next = obj_desc->mutex.next;







  (obj_desc->mutex.prev)->mutex.original_sync_level =
      obj_desc->mutex.original_sync_level;
 } else {
  thread->acquired_mutex_list = obj_desc->mutex.next;
 }
}
