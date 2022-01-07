
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMUCR ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int ctrl_barrier () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void local_flush_tlb_all(void)
{
 unsigned long flags, status;
 local_irq_save(flags);
 status = __raw_readl(MMUCR);
 status |= 0x04;
 __raw_writel(status, MMUCR);
 ctrl_barrier();
 local_irq_restore(flags);
}
