
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct nds32_pmu {int (* enable ) (struct perf_event*) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int nds32_pmu_event_set_period (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static void nds32_start(struct perf_event *event, int flags)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;




 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));

 hwc->state = 0;

 nds32_pmu_event_set_period(event);

 nds32_pmu->enable(event);
}
