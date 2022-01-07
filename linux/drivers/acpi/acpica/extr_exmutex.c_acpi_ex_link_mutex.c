
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_operand_object* prev; union acpi_operand_object* next; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
struct acpi_thread_state {union acpi_operand_object* acquired_mutex_list; } ;



__attribute__((used)) static void
acpi_ex_link_mutex(union acpi_operand_object *obj_desc,
     struct acpi_thread_state *thread)
{
 union acpi_operand_object *list_head;

 list_head = thread->acquired_mutex_list;



 obj_desc->mutex.prev = ((void*)0);
 obj_desc->mutex.next = list_head;



 if (list_head) {
  list_head->mutex.prev = obj_desc;
 }



 thread->acquired_mutex_list = obj_desc;
}
