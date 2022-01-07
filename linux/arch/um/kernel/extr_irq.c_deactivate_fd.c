
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_entry {int dummy; } ;


 int IGNORE_DEV ;
 int do_free_by_irq_and_dev (struct irq_entry*,int,int *,int ) ;
 int garbage_collect_irq_entries () ;
 struct irq_entry* get_irq_entry_by_fd (int) ;
 int ignore_sigio_fd (int) ;
 int irq_lock ;
 int os_del_epoll_fd (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void deactivate_fd(int fd, int irqnum)
{
 struct irq_entry *to_free;
 unsigned long flags;

 os_del_epoll_fd(fd);
 spin_lock_irqsave(&irq_lock, flags);
 to_free = get_irq_entry_by_fd(fd);
 if (to_free != ((void*)0)) {
  do_free_by_irq_and_dev(
   to_free,
   irqnum,
   ((void*)0),
   IGNORE_DEV
  );
 }
 garbage_collect_irq_entries();
 spin_unlock_irqrestore(&irq_lock, flags);
 ignore_sigio_fd(fd);
}
