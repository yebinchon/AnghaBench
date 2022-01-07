
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMUCR ;
 int MMUCR_TI ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void __flush_tlb_global(void)
{
 unsigned long flags;

 local_irq_save(flags);






 __raw_writel(__raw_readl(MMUCR) | MMUCR_TI, MMUCR);

 local_irq_restore(flags);
}
