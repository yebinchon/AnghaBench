
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {struct intel_uncore_box* pmu_private; } ;
struct intel_uncore_box {int dummy; } ;



__attribute__((used)) static inline struct intel_uncore_box *uncore_event_to_box(struct perf_event *event)
{
 return event->pmu_private;
}
