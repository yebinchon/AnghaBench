
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
struct TYPE_5__ {unsigned long pte_low; unsigned long pte_high; } ;
typedef TYPE_1__ pte_t ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ active_mm; } ;


 int CPU_HAS_PTEA ;
 int MMU_PTEA ;
 int MMU_PTEH ;
 int MMU_PTEL ;
 unsigned long MMU_VPN_MASK ;
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ;
 unsigned long _PAGE_WT ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long copy_ptea_attributes (unsigned long) ;
 TYPE_3__* cpu_data ;
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


 vpn = (address & MMU_VPN_MASK) | get_asid();
 __raw_writel(vpn, MMU_PTEH);

 pteval = pte.pte_low;
 if (cpu_data->flags & CPU_HAS_PTEA) {



  __raw_writel(copy_ptea_attributes(pteval), MMU_PTEA);
 }



 pteval &= _PAGE_FLAGS_HARDWARE_MASK;




 __raw_writel(pteval, MMU_PTEL);


 asm volatile("ldtlb": : : "memory");
 local_irq_restore(flags);
}
