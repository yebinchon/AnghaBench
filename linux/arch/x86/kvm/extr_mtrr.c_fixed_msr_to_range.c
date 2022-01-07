
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int fixed_msr_to_seg_unit (int ,int*,int*) ;
 int fixed_mtrr_seg_unit_range (int,int,int *,int *) ;

__attribute__((used)) static bool fixed_msr_to_range(u32 msr, u64 *start, u64 *end)
{
 int seg, unit;

 if (!fixed_msr_to_seg_unit(msr, &seg, &unit))
  return 0;

 fixed_mtrr_seg_unit_range(seg, unit, start, end);
 return 1;
}
