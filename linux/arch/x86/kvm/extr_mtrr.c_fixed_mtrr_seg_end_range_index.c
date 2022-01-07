
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed_mtrr_segment {int end; int start; int range_shift; int range_start; } ;


 struct fixed_mtrr_segment* fixed_seg_table ;

__attribute__((used)) static int fixed_mtrr_seg_end_range_index(int seg)
{
 struct fixed_mtrr_segment *mtrr_seg = &fixed_seg_table[seg];
 int n;

 n = (mtrr_seg->end - mtrr_seg->start) >> mtrr_seg->range_shift;
 return mtrr_seg->range_start + n - 1;
}
