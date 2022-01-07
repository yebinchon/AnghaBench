
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void apb_calc_first_last(u8 map, u32 *first_p, u32 *last_p)
{
 u32 idx, first, last;

 first = 8;
 last = 0;
 for (idx = 0; idx < 8; idx++) {
  if ((map & (1 << idx)) != 0) {
   if (first > idx)
    first = idx;
   if (last < idx)
    last = idx;
  }
 }

 *first_p = first;
 *last_p = last;
}
