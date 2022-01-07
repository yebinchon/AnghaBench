
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int used_mask; } ;


 int PERF_EF_UPDATE ;
 int __clear_bit (int ,int ) ;
 int cpu_hw_events ;
 int perf_event_update_userpage (struct perf_event*) ;
 int sh_pmu_stop (struct perf_event*,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sh_pmu_del(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 sh_pmu_stop(event, PERF_EF_UPDATE);
 __clear_bit(event->hw.idx, cpuc->used_mask);

 perf_event_update_userpage(event);
}
