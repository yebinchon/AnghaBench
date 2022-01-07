
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 unsigned long L1_CACHE_BYTES ;
 unsigned long PAGE_SIZE ;
 unsigned long UVH_RTC ;
 unsigned long uv_blade_processor_id () ;
 int uv_get_min_hub_revision_id () ;
 int uv_read_local_mmr (unsigned long) ;

__attribute__((used)) static u64 uv_read_rtc(struct clocksource *cs)
{
 unsigned long offset;

 if (uv_get_min_hub_revision_id() == 1)
  offset = 0;
 else
  offset = (uv_blade_processor_id() * L1_CACHE_BYTES) % PAGE_SIZE;

 return (u64)uv_read_local_mmr(UVH_RTC | offset);
}
