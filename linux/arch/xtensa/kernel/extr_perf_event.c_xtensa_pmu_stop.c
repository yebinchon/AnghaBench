
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int XTENSA_PMU_PMCTRL (int) ;
 int XTENSA_PMU_PMSTAT (int) ;
 int get_er (int ) ;
 int set_er (int ,int ) ;
 int xtensa_perf_event_update (struct perf_event*,struct hw_perf_event*,int) ;

__attribute__((used)) static void xtensa_pmu_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (!(hwc->state & PERF_HES_STOPPED)) {
  set_er(0, XTENSA_PMU_PMCTRL(idx));
  set_er(get_er(XTENSA_PMU_PMSTAT(idx)),
         XTENSA_PMU_PMSTAT(idx));
  hwc->state |= PERF_HES_STOPPED;
 }

 if ((flags & PERF_EF_UPDATE) &&
     !(event->hw.state & PERF_HES_UPTODATE)) {
  xtensa_perf_event_update(event, &event->hw, idx);
  event->hw.state |= PERF_HES_UPTODATE;
 }
}
