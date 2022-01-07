
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int __armv8_pmuv3_map_event (struct perf_event*,int *,int *) ;
 int armv8_vulcan_perf_cache_map ;

__attribute__((used)) static int armv8_vulcan_map_event(struct perf_event *event)
{
 return __armv8_pmuv3_map_event(event, ((void*)0),
           &armv8_vulcan_perf_cache_map);
}
