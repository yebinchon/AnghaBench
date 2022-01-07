
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xtensa_pmu_events {int used_mask; } ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_EF_UPDATE ;
 int __clear_bit (int ,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct xtensa_pmu_events* this_cpu_ptr (int *) ;
 int xtensa_pmu_events ;
 int xtensa_pmu_stop (struct perf_event*,int ) ;

__attribute__((used)) static void xtensa_pmu_del(struct perf_event *event, int flags)
{
 struct xtensa_pmu_events *ev = this_cpu_ptr(&xtensa_pmu_events);

 xtensa_pmu_stop(event, PERF_EF_UPDATE);
 __clear_bit(event->hw.idx, ev->used_mask);
 perf_event_update_userpage(event);
}
