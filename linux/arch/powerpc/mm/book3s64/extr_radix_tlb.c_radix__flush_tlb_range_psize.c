
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 void __radix__flush_tlb_range_psize (struct mm_struct*,unsigned long,unsigned long,int,int) ;

void radix__flush_tlb_range_psize(struct mm_struct *mm, unsigned long start,
      unsigned long end, int psize)
{
 return __radix__flush_tlb_range_psize(mm, start, end, psize, 0);
}
