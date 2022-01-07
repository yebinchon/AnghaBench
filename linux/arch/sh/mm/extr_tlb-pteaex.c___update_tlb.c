
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
struct TYPE_4__ {unsigned long pte_low; unsigned long pte_high; } ;
typedef TYPE_1__ pte_t ;
struct TYPE_5__ {scalar_t__ active_mm; } ;


 int MMU_PTEA ;
 int MMU_PTEAEX ;
 int MMU_PTEH ;
 int MMU_PTEL ;
 unsigned long MMU_VPN_MASK ;
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ;
 unsigned long _PAGE_WT ;
 int __raw_writel (unsigned long,int ) ;
 TYPE_2__* current ;
 unsigned long get_asid () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void __update_tlb(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
 unsigned long flags, pteval, vpn;




 if (vma && current->active_mm != vma->vm_mm)
  return;

 local_irq_save(flags);


 vpn = address & MMU_VPN_MASK;
 __raw_writel(vpn, MMU_PTEH);


 __raw_writel(get_asid(), MMU_PTEAEX);

 pteval = pte.pte_low;
 pteval &= _PAGE_FLAGS_HARDWARE_MASK;




 __raw_writel(pteval, MMU_PTEL);


 asm volatile("ldtlb": : : "memory");
 local_irq_restore(flags);
}
