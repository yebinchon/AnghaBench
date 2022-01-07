
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MMUCR ;
 unsigned long MMUCR_URB ;
 int MMUCR_URB_NENTRIES ;
 unsigned long MMUCR_URB_SHIFT ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int ctrl_barrier () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void tlb_unwire_entry(void)
{
 unsigned long status, flags;
 int urb;

 local_irq_save(flags);

 status = __raw_readl(MMUCR);
 urb = (status & MMUCR_URB) >> MMUCR_URB_SHIFT;
 status &= ~MMUCR_URB;





 BUG_ON(urb++ == MMUCR_URB_NENTRIES);

 urb = urb % MMUCR_URB_NENTRIES;

 status |= (urb << MMUCR_URB_SHIFT);
 __raw_writel(status, MMUCR);
 ctrl_barrier();

 local_irq_restore(flags);
}
