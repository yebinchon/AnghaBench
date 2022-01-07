
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct perf_event_attr {int type; size_t config; int exclude_user; int exclude_kernel; int exclude_hv; } ;
struct hw_perf_event {size_t config; int config_base; } ;
struct perf_event {int destroy; struct hw_perf_event hw; struct perf_event_attr attr; } ;
typedef enum cpumf_ctr_set { ____Placeholder_cpumf_ctr_set } cpumf_ctr_set ;


 size_t ARRAY_SIZE (size_t*) ;






 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 size_t PERF_CPUM_CF_MAX_CTR ;


 scalar_t__ __kernel_cpumcf_begin () ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 size_t* cpumf_generic_events_basic ;
 size_t* cpumf_generic_events_user ;
 int get_counter_set (size_t) ;
 int hw_perf_event_destroy ;
 int is_sampling_event (struct perf_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_events ;
 int pmc_reserve_mutex ;
 int validate_ctr_auth (struct hw_perf_event*) ;
 int validate_ctr_version (struct hw_perf_event*) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 enum cpumf_ctr_set set;
 int err = 0;
 u64 ev;

 switch (attr->type) {
 case 128:


  if (attr->exclude_kernel || attr->exclude_user ||
      attr->exclude_hv)
   return -EOPNOTSUPP;
  ev = attr->config;
  break;

 case 129:
  if (is_sampling_event(event))
   return -ENOENT;
  ev = attr->config;

  if (!attr->exclude_user && attr->exclude_kernel) {
   if (ev >= ARRAY_SIZE(cpumf_generic_events_user))
    return -EOPNOTSUPP;
   ev = cpumf_generic_events_user[ev];


  } else if (!attr->exclude_kernel && attr->exclude_user) {
   return -EOPNOTSUPP;


  } else {
   if (ev >= ARRAY_SIZE(cpumf_generic_events_basic))
    return -EOPNOTSUPP;
   ev = cpumf_generic_events_basic[ev];
  }
  break;

 default:
  return -ENOENT;
 }

 if (ev == -1)
  return -ENOENT;

 if (ev > PERF_CPUM_CF_MAX_CTR)
  return -ENOENT;


 set = get_counter_set(ev);
 switch (set) {
 case 135:
 case 130:
 case 134:
 case 133:
 case 131:






  hwc->config = ev;
  hwc->config_base = set;
  break;
 case 132:

  return -EINVAL;
 };


 if (!atomic_inc_not_zero(&num_events)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_read(&num_events) == 0 && __kernel_cpumcf_begin())
   err = -EBUSY;
  else
   atomic_inc(&num_events);
  mutex_unlock(&pmc_reserve_mutex);
 }
 if (err)
  return err;
 event->destroy = hw_perf_event_destroy;


 err = validate_ctr_auth(hwc);
 if (!err)
  err = validate_ctr_version(hwc);

 return err;
}
