
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long HV_TLB_FLUSH_UNIT ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;

__attribute__((used)) static inline int fill_gva_list(u64 gva_list[], int offset,
    unsigned long start, unsigned long end)
{
 int gva_n = offset;
 unsigned long cur = start, diff;

 do {
  diff = end > cur ? end - cur : 0;

  gva_list[gva_n] = cur & PAGE_MASK;




  if (diff >= HV_TLB_FLUSH_UNIT) {
   gva_list[gva_n] |= ~PAGE_MASK;
   cur += HV_TLB_FLUSH_UNIT;
  } else if (diff) {
   gva_list[gva_n] |= (diff - 1) >> PAGE_SHIFT;
   cur = end;
  }

  gva_n++;

 } while (cur < end);

 return gva_n - offset;
}
