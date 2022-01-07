
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int prev_count; int event_base_rdpmc; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;
typedef int s64 ;


 int COUNTER_SHIFT ;
 int local64_add (int,int *) ;
 int local64_read (int *) ;
 int local64_set (int *,int) ;
 int rdpmcl (int ,int) ;

__attribute__((used)) static void amd_uncore_read(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 prev, new;
 s64 delta;






 prev = local64_read(&hwc->prev_count);
 rdpmcl(hwc->event_base_rdpmc, new);
 local64_set(&hwc->prev_count, new);
 delta = (new << COUNTER_SHIFT) - (prev << COUNTER_SHIFT);
 delta >>= COUNTER_SHIFT;
 local64_add(delta, &event->count);
}
