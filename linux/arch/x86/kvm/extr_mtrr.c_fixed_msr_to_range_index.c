
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int fixed_msr_to_seg_unit (int ,int*,int*) ;
 int fixed_mtrr_seg_unit_range_index (int,int) ;

__attribute__((used)) static int fixed_msr_to_range_index(u32 msr)
{
 int seg, unit;

 if (!fixed_msr_to_seg_unit(msr, &seg, &unit))
  return -1;

 return fixed_mtrr_seg_unit_range_index(seg, unit);
}
