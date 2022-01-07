
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long u64 ;
struct perf_event_attr {scalar_t__ type; scalar_t__ config; } ;
struct hw_perf_event {long long config; int sample_period; int period_left; int last_period; } ;
struct perf_event {struct perf_event_attr attr; struct hw_perf_event hw; } ;
struct TYPE_2__ {scalar_t__ max_events; long long (* event_map ) (scalar_t__) ;int max_period; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ PERF_TYPE_HW_CACHE ;
 scalar_t__ PERF_TYPE_RAW ;
 scalar_t__ array_index_nospec (unsigned long,scalar_t__) ;
 int is_sampling_event (struct perf_event*) ;
 int local64_set (int *,int ) ;
 int set_ext_hw_attr (struct hw_perf_event*,struct perf_event*) ;
 long long stub1 (scalar_t__) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_extra_regs (scalar_t__,struct perf_event*) ;

int x86_setup_perfctr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 u64 config;

 if (!is_sampling_event(event)) {
  hwc->sample_period = x86_pmu.max_period;
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 }

 if (attr->type == PERF_TYPE_RAW)
  return x86_pmu_extra_regs(event->attr.config, event);

 if (attr->type == PERF_TYPE_HW_CACHE)
  return set_ext_hw_attr(hwc, event);

 if (attr->config >= x86_pmu.max_events)
  return -EINVAL;

 attr->config = array_index_nospec((unsigned long)attr->config, x86_pmu.max_events);




 config = x86_pmu.event_map(attr->config);

 if (config == 0)
  return -ENOENT;

 if (config == -1LL)
  return -EINVAL;

 hwc->config |= config;

 return 0;
}
