
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;


 scalar_t__ ARRAY_SIZE (unsigned long long*) ;
 int BUG_ON (int) ;
 unsigned long PAGE_MASK ;
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ;
 unsigned long long* dtlb_entries ;
 scalar_t__ dtlb_entry ;
 int get_asid () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long pte_val (int ) ;
 unsigned long long sh64_get_wired_dtlb_entry () ;
 int sh64_setup_tlb_slot (unsigned long long,unsigned long,int ,unsigned long) ;

void tlb_wire_entry(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
 unsigned long long entry;
 unsigned long paddr, flags;

 BUG_ON(dtlb_entry == ARRAY_SIZE(dtlb_entries));

 local_irq_save(flags);

 entry = sh64_get_wired_dtlb_entry();
 dtlb_entries[dtlb_entry++] = entry;

 paddr = pte_val(pte) & _PAGE_FLAGS_HARDWARE_MASK;
 paddr &= ~PAGE_MASK;

 sh64_setup_tlb_slot(entry, addr, get_asid(), paddr);

 local_irq_restore(flags);
}
