
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask_clear; } ;


 size_t SUN4M_PROFILE_IRQ ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sbus_writel (int ,int *) ;
 int * sun4m_imask ;
 TYPE_1__* sun4m_irq_global ;

void sun4m_unmask_profile_irq(void)
{
 unsigned long flags;

 local_irq_save(flags);
 sbus_writel(sun4m_imask[SUN4M_PROFILE_IRQ], &sun4m_irq_global->mask_clear);
 local_irq_restore(flags);
}
