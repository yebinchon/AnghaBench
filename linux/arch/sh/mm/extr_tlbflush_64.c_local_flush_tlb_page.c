
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_mm; } ;


 unsigned long PAGE_MASK ;
 int get_asid () ;
 int local_flush_tlb_one (int ,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long page)
{
 unsigned long flags;

 if (vma->vm_mm) {
  page &= PAGE_MASK;
  local_irq_save(flags);
  local_flush_tlb_one(get_asid(), page);
  local_irq_restore(flags);
 }
}
