
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_iter {int fixed; int index; int seg; int start; int mtrr_state; } ;


 int fixed_mtrr_addr_seg_to_range_index (int ,int) ;
 int fixed_mtrr_addr_to_seg (int ) ;
 int fixed_mtrr_is_enabled (int ) ;

__attribute__((used)) static bool mtrr_lookup_fixed_start(struct mtrr_iter *iter)
{
 int seg, index;

 if (!fixed_mtrr_is_enabled(iter->mtrr_state))
  return 0;

 seg = fixed_mtrr_addr_to_seg(iter->start);
 if (seg < 0)
  return 0;

 iter->fixed = 1;
 index = fixed_mtrr_addr_seg_to_range_index(iter->start, seg);
 iter->index = index;
 iter->seg = seg;
 return 1;
}
