
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __speculation_ctrl_update (unsigned long,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void speculation_ctrl_update(unsigned long tif)
{
 unsigned long flags;


 local_irq_save(flags);
 __speculation_ctrl_update(~tif, tif);
 local_irq_restore(flags);
}
