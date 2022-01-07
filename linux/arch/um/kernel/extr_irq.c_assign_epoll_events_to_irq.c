
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fd {int events; } ;
struct irq_entry {int fd; struct irq_fd** irq_array; } ;


 int MAX_IRQ_TYPE ;
 int os_add_epoll_fd (int,int ,struct irq_entry*) ;
 int os_del_epoll_fd (int ) ;

__attribute__((used)) static int assign_epoll_events_to_irq(struct irq_entry *irq_entry)
{
 int i;
 int events = 0;
 struct irq_fd *irq;

 for (i = 0; i < MAX_IRQ_TYPE ; i++) {
  irq = irq_entry->irq_array[i];
  if (irq != ((void*)0))
   events = irq->events | events;
 }
 if (events > 0) {

  return os_add_epoll_fd(events, irq_entry->fd, irq_entry);
 }

 return os_del_epoll_fd(irq_entry->fd);
}
