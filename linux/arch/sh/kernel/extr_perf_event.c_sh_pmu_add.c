
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; int state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {int used_mask; } ;
struct TYPE_2__ {int num_events; int (* disable ) (struct hw_perf_event*,int) ;} ;


 int EAGAIN ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int __set_bit (int,int ) ;
 scalar_t__ __test_and_set_bit (int,int ) ;
 int cpu_hw_events ;
 int find_first_zero_bit (int ,int) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 TYPE_1__* sh_pmu ;
 int sh_pmu_start (struct perf_event*,int ) ;
 int stub1 (struct hw_perf_event*,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int sh_pmu_add(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;
 int ret = -EAGAIN;

 perf_pmu_disable(event->pmu);

 if (__test_and_set_bit(idx, cpuc->used_mask)) {
  idx = find_first_zero_bit(cpuc->used_mask, sh_pmu->num_events);
  if (idx == sh_pmu->num_events)
   goto out;

  __set_bit(idx, cpuc->used_mask);
  hwc->idx = idx;
 }

 sh_pmu->disable(hwc, idx);

 event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
 if (flags & PERF_EF_START)
  sh_pmu_start(event, PERF_EF_RELOAD);

 perf_event_update_userpage(event);
 ret = 0;
out:
 perf_pmu_enable(event->pmu);
 return ret;
}
