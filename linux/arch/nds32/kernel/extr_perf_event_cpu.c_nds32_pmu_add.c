
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {struct perf_event** events; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;
struct nds32_pmu {int (* get_event_idx ) (struct pmu_hw_events*,struct perf_event*) ;int (* disable ) (struct perf_event*) ;struct pmu_hw_events* (* get_hw_events ) () ;} ;


 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int nds32_start (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct pmu_hw_events* stub1 () ;
 int stub2 (struct pmu_hw_events*,struct perf_event*) ;
 int stub3 (struct perf_event*) ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static int nds32_pmu_add(struct perf_event *event, int flags)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(event->pmu);
 struct pmu_hw_events *hw_events = nds32_pmu->get_hw_events();
 struct hw_perf_event *hwc = &event->hw;
 int idx;
 int err = 0;

 perf_pmu_disable(event->pmu);


 idx = nds32_pmu->get_event_idx(hw_events, event);
 if (idx < 0) {
  err = idx;
  goto out;
 }





 event->hw.idx = idx;
 nds32_pmu->disable(event);
 hw_events->events[idx] = event;

 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 if (flags & PERF_EF_START)
  nds32_start(event, PERF_EF_RELOAD);


 perf_event_update_userpage(event);

out:
 perf_pmu_enable(event->pmu);
 return err;
}
