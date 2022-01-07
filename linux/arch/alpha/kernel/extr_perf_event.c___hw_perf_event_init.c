
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {scalar_t__ type; size_t config; } ;
struct hw_perf_event {int event_base; scalar_t__ sample_period; int period_left; scalar_t__ last_period; int idx; scalar_t__ config_base; } ;
struct perf_event {int destroy; struct perf_event* group_leader; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {size_t max_events; int* event_map; scalar_t__* pmc_max_period; scalar_t__ num_pmcs; int (* raw_event_valid ) (size_t) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MAX_HWEVENTS ;
 scalar_t__ PERF_TYPE_HARDWARE ;
 scalar_t__ PERF_TYPE_HW_CACHE ;
 scalar_t__ PERF_TYPE_RAW ;
 int PMC_NO_INDEX ;
 scalar_t__ alpha_check_constraints (struct perf_event**,unsigned long*,int) ;
 TYPE_1__* alpha_pmu ;
 int collect_events (struct perf_event*,scalar_t__,struct perf_event**,unsigned long*,int*) ;
 int hw_perf_event_destroy ;
 int local64_set (int *,scalar_t__) ;
 int stub1 (size_t) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 struct perf_event *evts[MAX_HWEVENTS];
 unsigned long evtypes[MAX_HWEVENTS];
 int idx_rubbish_bin[MAX_HWEVENTS];
 int ev;
 int n;




 if (attr->type == PERF_TYPE_HARDWARE) {
  if (attr->config >= alpha_pmu->max_events)
   return -EINVAL;
  ev = alpha_pmu->event_map[attr->config];
 } else if (attr->type == PERF_TYPE_HW_CACHE) {
  return -EOPNOTSUPP;
 } else if (attr->type == PERF_TYPE_RAW) {
  if (!alpha_pmu->raw_event_valid(attr->config))
   return -EINVAL;
  ev = attr->config;
 } else {
  return -EOPNOTSUPP;
 }

 if (ev < 0) {
  return ev;
 }
 hwc->event_base = ev;





 n = 0;
 if (event->group_leader != event) {
  n = collect_events(event->group_leader,
    alpha_pmu->num_pmcs - 1,
    evts, evtypes, idx_rubbish_bin);
  if (n < 0)
   return -EINVAL;
 }
 evtypes[n] = hwc->event_base;
 evts[n] = event;

 if (alpha_check_constraints(evts, evtypes, n + 1))
  return -EINVAL;


 hwc->config_base = 0;
 hwc->idx = PMC_NO_INDEX;

 event->destroy = hw_perf_event_destroy;
 if (!hwc->sample_period) {
  hwc->sample_period = alpha_pmu->pmc_max_period[0];
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 }

 return 0;
}
