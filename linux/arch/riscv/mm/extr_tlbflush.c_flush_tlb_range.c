
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int __sbi_tlb_flush_range (int ,unsigned long,unsigned long) ;
 int mm_cpumask (int ) ;

void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)
{
 __sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), start, end - start);
}
