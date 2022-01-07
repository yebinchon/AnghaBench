
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int __kgdb_notify (void*,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int kgdb_notify(struct notifier_block *self,
         unsigned long cmd, void *ptr)
{
 unsigned long flags;
 int ret;

 local_irq_save(flags);
 ret = __kgdb_notify(ptr, cmd);
 local_irq_restore(flags);

 return ret;
}
