
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fixed_mtrr_segment {int start; int end; } ;


 int WARN_ON (int) ;
 int fixed_mtrr_seg_unit_size (int) ;
 struct fixed_mtrr_segment* fixed_seg_table ;

__attribute__((used)) static void fixed_mtrr_seg_unit_range(int seg, int unit, u64 *start, u64 *end)
{
 struct fixed_mtrr_segment *mtrr_seg = &fixed_seg_table[seg];
 u64 unit_size = fixed_mtrr_seg_unit_size(seg);

 *start = mtrr_seg->start + unit * unit_size;
 *end = *start + unit_size;
 WARN_ON(*end > mtrr_seg->end);
}
