
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 scalar_t__ MM_CTXT_NO_ASID ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ asid_mm (int ,unsigned int const) ;
 unsigned long hw_pid (int ,unsigned int const) ;
 int local_flush_tlb_mm (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int smp_processor_id () ;
 int tlb_entry_erase (unsigned long) ;
 scalar_t__ unlikely (int) ;
 int utlb_invalidate () ;

void local_flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
      unsigned long end)
{
 const unsigned int cpu = smp_processor_id();
 unsigned long flags;
 if (unlikely((end - start) >= PAGE_SIZE * 32)) {
  local_flush_tlb_mm(vma->vm_mm);
  return;
 }






 start &= PAGE_MASK;

 local_irq_save(flags);

 if (asid_mm(vma->vm_mm, cpu) != MM_CTXT_NO_ASID) {
  while (start < end) {
   tlb_entry_erase(start | hw_pid(vma->vm_mm, cpu));
   start += PAGE_SIZE;
  }
 }

 utlb_invalidate();

 local_irq_restore(flags);
}
