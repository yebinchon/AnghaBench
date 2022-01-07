
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int SOFTWARE_EVENT_MASK ;
 int nds32_pfm_perf_cache_map ;
 int nds32_pfm_perf_map ;
 int nds32_pmu_map_event (struct perf_event*,int *,int *,int ) ;

__attribute__((used)) static int nds32_spav3_map_event(struct perf_event *event)
{
 return nds32_pmu_map_event(event, &nds32_pfm_perf_map,
    &nds32_pfm_perf_cache_map, SOFTWARE_EVENT_MASK);
}
