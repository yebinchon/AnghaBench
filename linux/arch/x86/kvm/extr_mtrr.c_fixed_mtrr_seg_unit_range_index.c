
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed_mtrr_segment {scalar_t__ start; scalar_t__ end; int range_start; } ;


 int WARN_ON (int) ;
 int fixed_mtrr_seg_unit_size (int) ;
 struct fixed_mtrr_segment* fixed_seg_table ;

__attribute__((used)) static int fixed_mtrr_seg_unit_range_index(int seg, int unit)
{
 struct fixed_mtrr_segment *mtrr_seg = &fixed_seg_table[seg];

 WARN_ON(mtrr_seg->start + unit * fixed_mtrr_seg_unit_size(seg)
  > mtrr_seg->end);


 return mtrr_seg->range_start + 8 * unit;
}
