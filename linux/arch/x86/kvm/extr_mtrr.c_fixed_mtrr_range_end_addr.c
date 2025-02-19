
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fixed_mtrr_segment {int range_start; int range_shift; scalar_t__ start; } ;


 struct fixed_mtrr_segment* fixed_seg_table ;

__attribute__((used)) static u64 fixed_mtrr_range_end_addr(int seg, int index)
{
 struct fixed_mtrr_segment *mtrr_seg = &fixed_seg_table[seg];
 int pos = index - mtrr_seg->range_start;

 return mtrr_seg->start + ((pos + 1) << mtrr_seg->range_shift);
}
