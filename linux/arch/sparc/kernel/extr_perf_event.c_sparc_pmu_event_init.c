
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_map {int dummy; } ;
struct perf_event_attr {int type; unsigned long config; int exclude_hv; int exclude_kernel; int exclude_user; } ;
struct hw_perf_event {unsigned long event_base; scalar_t__ sample_period; int period_left; scalar_t__ last_period; int idx; int config_base; } ;
struct perf_event {int destroy; struct perf_event* group_leader; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {unsigned long max_events; scalar_t__ max_hw_events; int hv_bit; int priv_bit; int user_bit; int irq_bit; struct perf_event_map* (* event_map ) (unsigned long) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int IS_ERR (struct perf_event_map const*) ;
 int MAX_HWEVENTS ;
 scalar_t__ MAX_PERIOD ;



 int PIC_NO_INDEX ;
 int PTR_ERR (struct perf_event_map const*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ check_excludes (struct perf_event**,int,int) ;
 int collect_events (struct perf_event*,scalar_t__,struct perf_event**,unsigned long*,int*) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int hw_perf_event_destroy ;
 int local64_set (int *,scalar_t__) ;
 int nmi_active ;
 unsigned long perf_event_encode (struct perf_event_map const*) ;
 int perf_event_grab_pmc () ;
 scalar_t__ sparc_check_constraints (struct perf_event**,unsigned long*,int) ;
 struct perf_event_map* sparc_map_cache_event (unsigned long) ;
 TYPE_1__* sparc_pmu ;
 struct perf_event_map* stub1 (unsigned long) ;

__attribute__((used)) static int sparc_pmu_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct perf_event *evts[MAX_HWEVENTS];
 struct hw_perf_event *hwc = &event->hw;
 unsigned long events[MAX_HWEVENTS];
 int current_idx_dmy[MAX_HWEVENTS];
 const struct perf_event_map *pmap;
 int n;

 if (atomic_read(&nmi_active) < 0)
  return -ENODEV;


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 switch (attr->type) {
 case 130:
  if (attr->config >= sparc_pmu->max_events)
   return -EINVAL;
  pmap = sparc_pmu->event_map(attr->config);
  break;

 case 129:
  pmap = sparc_map_cache_event(attr->config);
  if (IS_ERR(pmap))
   return PTR_ERR(pmap);
  break;

 case 128:
  pmap = ((void*)0);
  break;

 default:
  return -ENOENT;

 }

 if (pmap) {
  hwc->event_base = perf_event_encode(pmap);
 } else {




  hwc->event_base = attr->config;
 }


 hwc->config_base = sparc_pmu->irq_bit;
 if (!attr->exclude_user)
  hwc->config_base |= sparc_pmu->user_bit;
 if (!attr->exclude_kernel)
  hwc->config_base |= sparc_pmu->priv_bit;
 if (!attr->exclude_hv)
  hwc->config_base |= sparc_pmu->hv_bit;

 n = 0;
 if (event->group_leader != event) {
  n = collect_events(event->group_leader,
       sparc_pmu->max_hw_events - 1,
       evts, events, current_idx_dmy);
  if (n < 0)
   return -EINVAL;
 }
 events[n] = hwc->event_base;
 evts[n] = event;

 if (check_excludes(evts, n, 1))
  return -EINVAL;

 if (sparc_check_constraints(evts, events, n + 1))
  return -EINVAL;

 hwc->idx = PIC_NO_INDEX;




 perf_event_grab_pmc();
 event->destroy = hw_perf_event_destroy;

 if (!hwc->sample_period) {
  hwc->sample_period = MAX_PERIOD;
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 }

 return 0;
}
