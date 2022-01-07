
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_entry {int dummy; } ;


 int IGNORE_DEV ;
 int IGNORE_IRQ ;
 int do_free_by_irq_and_dev (struct irq_entry*,int,int *,int) ;
 int garbage_collect_irq_entries () ;
 struct irq_entry* get_irq_entry_by_fd (int) ;
 int irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void free_irq_by_fd(int fd)
{
 struct irq_entry *to_free;
 unsigned long flags;

 spin_lock_irqsave(&irq_lock, flags);
 to_free = get_irq_entry_by_fd(fd);
 if (to_free != ((void*)0)) {
  do_free_by_irq_and_dev(
   to_free,
   -1,
   ((void*)0),
   IGNORE_IRQ | IGNORE_DEV
  );
 }
 garbage_collect_irq_entries();
 spin_unlock_irqrestore(&irq_lock, flags);
}
