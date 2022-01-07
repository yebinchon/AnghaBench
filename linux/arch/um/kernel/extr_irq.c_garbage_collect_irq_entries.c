
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_entry {struct irq_entry* next; int ** irq_array; } ;


 int MAX_IRQ_TYPE ;
 struct irq_entry* active_fds ;
 int kfree (struct irq_entry*) ;

__attribute__((used)) static void garbage_collect_irq_entries(void)
{
 int i;
 bool reap;
 struct irq_entry *walk;
 struct irq_entry *previous = ((void*)0);
 struct irq_entry *to_free;

 if (active_fds == ((void*)0))
  return;
 walk = active_fds;
 while (walk != ((void*)0)) {
  reap = 1;
  for (i = 0; i < MAX_IRQ_TYPE ; i++) {
   if (walk->irq_array[i] != ((void*)0)) {
    reap = 0;
    break;
   }
  }
  if (reap) {
   if (previous == ((void*)0))
    active_fds = walk->next;
   else
    previous->next = walk->next;
   to_free = walk;
  } else {
   to_free = ((void*)0);
  }
  walk = walk->next;
  kfree(to_free);
 }
}
