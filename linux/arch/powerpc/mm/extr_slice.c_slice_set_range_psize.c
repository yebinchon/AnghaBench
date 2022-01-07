
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {int dummy; } ;
struct mm_struct {int dummy; } ;


 int VM_BUG_ON (int ) ;
 int radix_enabled () ;
 int slice_convert (struct mm_struct*,struct slice_mask*,unsigned int) ;
 int slice_range_to_mask (unsigned long,unsigned long,struct slice_mask*) ;

void slice_set_range_psize(struct mm_struct *mm, unsigned long start,
      unsigned long len, unsigned int psize)
{
 struct slice_mask mask;

 VM_BUG_ON(radix_enabled());

 slice_range_to_mask(start, len, &mask);
 slice_convert(mm, &mask, psize);
}
