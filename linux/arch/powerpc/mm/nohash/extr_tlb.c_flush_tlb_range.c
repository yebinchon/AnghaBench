
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int flush_tlb_mm (int ) ;
 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;

void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)

{
 if (end - start == PAGE_SIZE && !(start & ~PAGE_MASK))
  flush_tlb_page(vma, start);
 else
  flush_tlb_mm(vma->vm_mm);
}
