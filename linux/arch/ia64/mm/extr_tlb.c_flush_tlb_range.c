
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 scalar_t__ REGION_NUMBER (unsigned long) ;
 int __flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int flush_tlb_all () ;
 unsigned long ia64_thash (unsigned long) ;
 scalar_t__ unlikely (int) ;

void flush_tlb_range(struct vm_area_struct *vma,
  unsigned long start, unsigned long end)
{
 if (unlikely(end - start >= 1024*1024*1024*1024UL
   || REGION_NUMBER(start) != REGION_NUMBER(end - 1))) {





  flush_tlb_all();
 } else {

  __flush_tlb_range(vma, start, end);

  __flush_tlb_range(vma, ia64_thash(start), ia64_thash(end));
 }
}
