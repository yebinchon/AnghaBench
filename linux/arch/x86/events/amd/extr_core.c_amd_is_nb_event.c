
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; } ;



__attribute__((used)) static inline int amd_is_nb_event(struct hw_perf_event *hwc)
{
 return (hwc->config & 0xe0) == 0xe0;
}
