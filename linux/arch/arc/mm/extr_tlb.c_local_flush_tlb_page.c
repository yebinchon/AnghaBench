
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 scalar_t__ MM_CTXT_NO_ASID ;
 unsigned long PAGE_MASK ;
 scalar_t__ asid_mm (int ,unsigned int const) ;
 unsigned long hw_pid (int ,unsigned int const) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int smp_processor_id () ;
 int tlb_entry_erase (unsigned long) ;
 int utlb_invalidate () ;

void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long page)
{
 const unsigned int cpu = smp_processor_id();
 unsigned long flags;




 local_irq_save(flags);

 if (asid_mm(vma->vm_mm, cpu) != MM_CTXT_NO_ASID) {
  tlb_entry_erase((page & PAGE_MASK) | hw_pid(vma->vm_mm, cpu));
  utlb_invalidate();
 }

 local_irq_restore(flags);
}
