
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fd {unsigned int irq; void* id; int purge; scalar_t__ active; } ;
struct irq_entry {struct irq_fd** irq_array; int fd; } ;


 int IGNORE_DEV ;
 int IGNORE_IRQ ;
 int MAX_IRQ_TYPE ;
 int assign_epoll_events_to_irq (struct irq_entry*) ;
 int kfree (struct irq_fd*) ;
 int os_del_epoll_fd (int ) ;

__attribute__((used)) static void do_free_by_irq_and_dev(
 struct irq_entry *irq_entry,
 unsigned int irq,
 void *dev,
 int flags
)
{
 int i;
 struct irq_fd *to_free;

 for (i = 0; i < MAX_IRQ_TYPE ; i++) {
  if (irq_entry->irq_array[i] != ((void*)0)) {
   if (
   ((flags & IGNORE_IRQ) ||
    (irq_entry->irq_array[i]->irq == irq)) &&
   ((flags & IGNORE_DEV) ||
    (irq_entry->irq_array[i]->id == dev))
   ) {



    os_del_epoll_fd(irq_entry->fd);
    to_free = irq_entry->irq_array[i];
    irq_entry->irq_array[i] = ((void*)0);
    assign_epoll_events_to_irq(irq_entry);
    if (to_free->active)
     to_free->purge = 1;
    else
     kfree(to_free);
   }
  }
 }
}
