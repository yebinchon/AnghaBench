
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long SLICE_HIGH_SHIFT ;
 scalar_t__ SLICE_LOW_TOP ;
 int slice_area_is_free (struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static int slice_high_has_vma(struct mm_struct *mm, unsigned long slice)
{
 unsigned long start = slice << SLICE_HIGH_SHIFT;
 unsigned long end = start + (1ul << SLICE_HIGH_SHIFT);




 if (start == 0)
  start = (unsigned long)SLICE_LOW_TOP;

 return !slice_area_is_free(mm, start, end - start);
}
