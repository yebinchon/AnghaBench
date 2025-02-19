
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {int dummy; } ;
struct mm_struct {int dummy; } ;


 unsigned long slice_find_area_bottomup (struct mm_struct*,unsigned long,struct slice_mask const*,int,unsigned long) ;
 unsigned long slice_find_area_topdown (struct mm_struct*,unsigned long,struct slice_mask const*,int,unsigned long) ;

__attribute__((used)) static unsigned long slice_find_area(struct mm_struct *mm, unsigned long len,
         const struct slice_mask *mask, int psize,
         int topdown, unsigned long high_limit)
{
 if (topdown)
  return slice_find_area_topdown(mm, len, mask, psize, high_limit);
 else
  return slice_find_area_bottomup(mm, len, mask, psize, high_limit);
}
