
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_entry {struct irq_entry* next; } ;


 int IGNORE_DEV ;
 int IGNORE_IRQ ;
 struct irq_entry* active_fds ;
 int do_free_by_irq_and_dev (struct irq_entry*,int,int *,int) ;
 int os_close_epoll_fd () ;
 int os_set_ioignore () ;

int deactivate_all_fds(void)
{
 struct irq_entry *to_free;





 os_set_ioignore();
 to_free = active_fds;
 while (to_free != ((void*)0)) {
  do_free_by_irq_and_dev(
   to_free,
   -1,
   ((void*)0),
   IGNORE_IRQ | IGNORE_DEV
  );
  to_free = to_free->next;
 }

 os_close_epoll_fd();
 return 0;
}
