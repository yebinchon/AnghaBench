
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int page_size; unsigned long start; unsigned long end; scalar_t__ need_flush_all; scalar_t__ fullmm; struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;


 int __flush_all_mm (struct mm_struct*,int) ;
 int __radix__flush_tlb_range (struct mm_struct*,unsigned long,unsigned long,int) ;
 scalar_t__ mm_tlb_flush_nested (struct mm_struct*) ;
 int radix__flush_all_mm (struct mm_struct*) ;
 int radix__flush_tlb_mm (struct mm_struct*) ;
 int radix__flush_tlb_pwc_range_psize (struct mm_struct*,unsigned long,unsigned long,int) ;
 int radix__flush_tlb_range_psize (struct mm_struct*,unsigned long,unsigned long,int) ;
 int radix_get_mmu_psize (int) ;

void radix__tlb_flush(struct mmu_gather *tlb)
{
 int psize = 0;
 struct mm_struct *mm = tlb->mm;
 int page_size = tlb->page_size;
 unsigned long start = tlb->start;
 unsigned long end = tlb->end;
 if (tlb->fullmm) {
  __flush_all_mm(mm, 1);
 } else if ( (psize = radix_get_mmu_psize(page_size)) == -1) {
  if (!tlb->need_flush_all)
   radix__flush_tlb_mm(mm);
  else
   radix__flush_all_mm(mm);
 } else {
  if (!tlb->need_flush_all)
   radix__flush_tlb_range_psize(mm, start, end, psize);
  else
   radix__flush_tlb_pwc_range_psize(mm, start, end, psize);
 }
 tlb->need_flush_all = 0;
}
