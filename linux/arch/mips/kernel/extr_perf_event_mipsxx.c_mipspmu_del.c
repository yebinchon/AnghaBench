
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int used_mask; int ** events; } ;
struct TYPE_2__ {int num_counters; } ;


 int PERF_EF_UPDATE ;
 int WARN_ON (int) ;
 int clear_bit (int,int ) ;
 int cpu_hw_events ;
 TYPE_1__ mipspmu ;
 int mipspmu_stop (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void mipspmu_del(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 WARN_ON(idx < 0 || idx >= mipspmu.num_counters);

 mipspmu_stop(event, PERF_EF_UPDATE);
 cpuc->events[idx] = ((void*)0);
 clear_bit(idx, cpuc->used_mask);

 perf_event_update_userpage(event);
}
