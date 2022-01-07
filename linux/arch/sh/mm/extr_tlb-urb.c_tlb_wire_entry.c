
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 int MMUCR ;
 unsigned long MMUCR_URB ;
 int MMUCR_URB_NENTRIES ;
 unsigned long MMUCR_URB_SHIFT ;
 unsigned long MMUCR_URC ;
 int MMUCR_URC_SHIFT ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int __update_tlb (struct vm_area_struct*,unsigned long,int ) ;
 int ctrl_barrier () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void tlb_wire_entry(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
 unsigned long status, flags;
 int urb;

 local_irq_save(flags);

 status = __raw_readl(MMUCR);
 urb = (status & MMUCR_URB) >> MMUCR_URB_SHIFT;
 status &= ~MMUCR_URC;




 BUG_ON(!--urb);

 urb = urb % MMUCR_URB_NENTRIES;





 status |= (urb << MMUCR_URC_SHIFT);
 __raw_writel(status, MMUCR);
 ctrl_barrier();


 __update_tlb(vma, addr, pte);


 status = __raw_readl(MMUCR);

 status &= ~MMUCR_URB;
 status |= (urb << MMUCR_URB_SHIFT);

 __raw_writel(status, MMUCR);
 ctrl_barrier();

 local_irq_restore(flags);
}
