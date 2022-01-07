
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pv_reboot ) (char*) ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* romvec ;
 int stub1 (char*) ;

void
prom_reboot(char *bcommand)
{
 unsigned long flags;
 local_irq_save(flags);
 (*(romvec->pv_reboot))(bcommand);
 local_irq_restore(flags);
}
