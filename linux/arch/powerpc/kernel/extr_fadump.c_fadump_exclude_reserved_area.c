
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ reserve_dump_area_start; scalar_t__ reserve_dump_area_size; } ;


 int crash_mrange_info ;
 int fadump_add_mem_range (int *,scalar_t__,scalar_t__) ;
 TYPE_1__ fw_dump ;

__attribute__((used)) static int fadump_exclude_reserved_area(u64 start, u64 end)
{
 u64 ra_start, ra_end;
 int ret = 0;

 ra_start = fw_dump.reserve_dump_area_start;
 ra_end = ra_start + fw_dump.reserve_dump_area_size;

 if ((ra_start < end) && (ra_end > start)) {
  if ((start < ra_start) && (end > ra_end)) {
   ret = fadump_add_mem_range(&crash_mrange_info,
         start, ra_start);
   if (ret)
    return ret;

   ret = fadump_add_mem_range(&crash_mrange_info,
         ra_end, end);
  } else if (start < ra_start) {
   ret = fadump_add_mem_range(&crash_mrange_info,
         start, ra_start);
  } else if (ra_end < end) {
   ret = fadump_add_mem_range(&crash_mrange_info,
         ra_end, end);
  }
 } else
  ret = fadump_add_mem_range(&crash_mrange_info, start, end);

 return ret;
}
