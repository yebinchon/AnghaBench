
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fixed_mtrr_segment {int range_start; int start; int range_shift; } ;


 struct fixed_mtrr_segment* fixed_seg_table ;

__attribute__((used)) static int fixed_mtrr_addr_seg_to_range_index(u64 addr, int seg)
{
 struct fixed_mtrr_segment *mtrr_seg;
 int index;

 mtrr_seg = &fixed_seg_table[seg];
 index = mtrr_seg->range_start;
 index += (addr - mtrr_seg->start) >> mtrr_seg->range_shift;
 return index;
}
