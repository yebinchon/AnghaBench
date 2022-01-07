
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct nds32_pmu {int (* disable ) (struct perf_event*) ;} ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int nds32_pmu_event_update (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static void nds32_stop(struct perf_event *event, int flags)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;




 if (!(hwc->state & PERF_HES_STOPPED)) {
  nds32_pmu->disable(event);
  nds32_pmu_event_update(event);
  hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
 }
}
