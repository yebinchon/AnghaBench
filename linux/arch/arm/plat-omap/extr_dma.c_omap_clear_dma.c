
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* clear_dma ) (int) ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* p ;
 int stub1 (int) ;

__attribute__((used)) static void omap_clear_dma(int lch)
{
 unsigned long flags;

 local_irq_save(flags);
 p->clear_dma(lch);
 local_irq_restore(flags);
}
