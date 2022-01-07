
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; int type; } ;
struct hw_perf_event {int idx; unsigned long config_base; int sample_period; int last_period; int period_left; scalar_t__ event_base; scalar_t__ config; } ;
struct perf_event {struct perf_event* group_leader; TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct nds32_pmu {int (* map_event ) (struct perf_event*) ;int max_period; scalar_t__ (* set_event_filter ) (struct hw_perf_event*,TYPE_1__*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ event_requires_mode_exclusion (TYPE_1__*) ;
 int local64_set (int *,int) ;
 int pr_debug (char*,...) ;
 int stub1 (struct perf_event*) ;
 scalar_t__ stub2 (struct hw_perf_event*,TYPE_1__*) ;
 struct nds32_pmu* to_nds32_pmu (int ) ;
 scalar_t__ validate_group (struct perf_event*) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int mapping;

 mapping = nds32_pmu->map_event(event);

 if (mapping < 0) {
  pr_debug("event %x:%llx not supported\n", event->attr.type,
    event->attr.config);
  return mapping;
 }







 hwc->idx = -1;
 hwc->config_base = 0;
 hwc->config = 0;
 hwc->event_base = 0;




 if ((!nds32_pmu->set_event_filter ||
      nds32_pmu->set_event_filter(hwc, &event->attr)) &&
     event_requires_mode_exclusion(&event->attr)) {
  pr_debug
   ("NDS performance counters do not support mode exclusion\n");
  return -EOPNOTSUPP;
 }




 hwc->config_base |= (unsigned long)mapping;

 if (!hwc->sample_period) {






  hwc->sample_period = nds32_pmu->max_period >> 1;
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 }

 if (event->group_leader != event) {
  if (validate_group(event) != 0)
   return -EINVAL;
 }

 return 0;
}
