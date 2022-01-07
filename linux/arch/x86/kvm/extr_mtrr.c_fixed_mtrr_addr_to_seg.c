
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fixed_mtrr_segment {scalar_t__ start; scalar_t__ end; } ;


 int ARRAY_SIZE (struct fixed_mtrr_segment*) ;
 struct fixed_mtrr_segment* fixed_seg_table ;

__attribute__((used)) static int fixed_mtrr_addr_to_seg(u64 addr)
{
 struct fixed_mtrr_segment *mtrr_seg;
 int seg, seg_num = ARRAY_SIZE(fixed_seg_table);

 for (seg = 0; seg < seg_num; seg++) {
  mtrr_seg = &fixed_seg_table[seg];
  if (mtrr_seg->start <= addr && addr < mtrr_seg->end)
   return seg;
 }

 return -1;
}
