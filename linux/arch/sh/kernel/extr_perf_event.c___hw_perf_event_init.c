
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int type; int config; } ;
struct hw_perf_event {int config; } ;
struct perf_event {int destroy; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {int raw_event_mask; int max_events; int (* event_map ) (int) ;} ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;



 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int hw_perf_cache_event (int,int*) ;
 int hw_perf_event_destroy ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_events ;
 int pmc_reserve_mutex ;
 scalar_t__ reserve_pmc_hardware () ;
 TYPE_1__* sh_pmu ;
 int sh_pmu_initialized () ;
 int stub1 (int) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 int config = -1;
 int err;

 if (!sh_pmu_initialized())
  return -ENODEV;
 err = 0;
 if (!atomic_inc_not_zero(&num_events)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_read(&num_events) == 0 &&
      reserve_pmc_hardware())
   err = -EBUSY;
  else
   atomic_inc(&num_events);
  mutex_unlock(&pmc_reserve_mutex);
 }

 if (err)
  return err;

 event->destroy = hw_perf_event_destroy;

 switch (attr->type) {
 case 128:
  config = attr->config & sh_pmu->raw_event_mask;
  break;
 case 129:
  err = hw_perf_cache_event(attr->config, &config);
  if (err)
   return err;
  break;
 case 130:
  if (attr->config >= sh_pmu->max_events)
   return -EINVAL;

  config = sh_pmu->event_map(attr->config);
  break;
 }

 if (config == -1)
  return -EINVAL;

 hwc->config |= config;

 return 0;
}
