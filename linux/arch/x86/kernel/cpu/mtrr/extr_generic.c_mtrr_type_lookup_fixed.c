
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int * fixed_ranges; } ;


 int MTRR_TYPE_INVALID ;
 TYPE_1__ mtrr_state ;

__attribute__((used)) static u8 mtrr_type_lookup_fixed(u64 start, u64 end)
{
 int idx;

 if (start >= 0x100000)
  return MTRR_TYPE_INVALID;


 if (start < 0x80000) {
  idx = 0;
  idx += (start >> 16);
  return mtrr_state.fixed_ranges[idx];

 } else if (start < 0xC0000) {
  idx = 1 * 8;
  idx += ((start - 0x80000) >> 14);
  return mtrr_state.fixed_ranges[idx];
 }


 idx = 3 * 8;
 idx += ((start - 0xC0000) >> 12);
 return mtrr_state.fixed_ranges[idx];
}
