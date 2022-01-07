
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; } ;



__attribute__((used)) static inline unsigned int amd_get_event_code(struct hw_perf_event *hwc)
{
 return ((hwc->config >> 24) & 0x0f00) | (hwc->config & 0x00ff);
}
