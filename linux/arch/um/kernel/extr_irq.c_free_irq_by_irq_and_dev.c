
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_entry {struct irq_entry* next; } ;


 struct irq_entry* active_fds ;
 int do_free_by_irq_and_dev (struct irq_entry*,unsigned int,void*,int ) ;
 int garbage_collect_irq_entries () ;
 int irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_irq_by_irq_and_dev(unsigned int irq, void *dev)
{
 struct irq_entry *to_free;
 unsigned long flags;

 spin_lock_irqsave(&irq_lock, flags);
 to_free = active_fds;
 while (to_free != ((void*)0)) {
  do_free_by_irq_and_dev(
   to_free,
   irq,
   dev,
   0
  );
  to_free = to_free->next;
 }
 garbage_collect_irq_entries();
 spin_unlock_irqrestore(&irq_lock, flags);
}
