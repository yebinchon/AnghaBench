
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;
struct irq_fd {scalar_t__ purge; int events; } ;
struct irq_entry {struct irq_fd** irq_array; } ;


 int EINTR ;
 int MAX_IRQ_TYPE ;
 int free_irqs () ;
 int irq_io_loop (struct irq_fd*,struct uml_pt_regs*) ;
 int kfree (struct irq_fd*) ;
 scalar_t__ os_epoll_get_data_pointer (int) ;
 scalar_t__ os_epoll_triggered (int,int ) ;
 int os_waiting_for_events_epoll () ;

void sigio_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
 struct irq_entry *irq_entry;
 struct irq_fd *irq;

 int n, i, j;

 while (1) {






  n = os_waiting_for_events_epoll();

  if (n <= 0) {
   if (n == -EINTR)
    continue;
   else
    break;
  }

  for (i = 0; i < n ; i++) {



   irq_entry = (struct irq_entry *)
    os_epoll_get_data_pointer(i);
   for (j = 0; j < MAX_IRQ_TYPE ; j++) {
    irq = irq_entry->irq_array[j];
    if (irq == ((void*)0))
     continue;
    if (os_epoll_triggered(i, irq->events) > 0)
     irq_io_loop(irq, regs);
    if (irq->purge) {
     irq_entry->irq_array[j] = ((void*)0);
     kfree(irq);
    }
   }
  }
 }

 free_irqs();
}
