
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int used_mask; int ** events; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct nds32_pmu {struct pmu_hw_events* (* get_hw_events ) () ;} ;


 int PERF_EF_UPDATE ;
 int clear_bit (int,int ) ;
 int nds32_stop (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct pmu_hw_events* stub1 () ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static void nds32_pmu_del(struct perf_event *event, int flags)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(event->pmu);
 struct pmu_hw_events *hw_events = nds32_pmu->get_hw_events();
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 nds32_stop(event, PERF_EF_UPDATE);
 hw_events->events[idx] = ((void*)0);
 clear_bit(idx, hw_events->used_mask);

 perf_event_update_userpage(event);
}
