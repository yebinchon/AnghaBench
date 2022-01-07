
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct active_request_slot {struct active_request_slot* next; scalar_t__ in_use; } ;


 struct active_request_slot* active_queue_head ;
 int run_active_slot (struct active_request_slot*) ;

void finish_all_active_slots(void)
{
 struct active_request_slot *slot = active_queue_head;

 while (slot != ((void*)0))
  if (slot->in_use) {
   run_active_slot(slot);
   slot = active_queue_head;
  } else {
   slot = slot->next;
  }
}
