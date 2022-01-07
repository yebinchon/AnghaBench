
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {scalar_t__ type; scalar_t__ config; int exclude_hv; int exclude_kernel; int exclude_user; } ;
struct hw_perf_event {int idx; scalar_t__ sample_period; int period_left; scalar_t__ last_period; scalar_t__ config; int config_base; int event_base; } ;
struct perf_event {int (* destroy ) (struct perf_event*) ;struct perf_event* group_leader; struct perf_event_attr attr; struct hw_perf_event hw; } ;
struct mips_perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_period; struct mips_perf_event* (* map_raw_event ) (scalar_t__) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct mips_perf_event const*) ;
 int MIPS_PERFCTRL_EXL ;
 int MIPS_PERFCTRL_IE ;
 int MIPS_PERFCTRL_K ;
 int MIPS_PERFCTRL_S ;
 int MIPS_PERFCTRL_U ;
 int M_PERFCTL_CONFIG_MASK ;
 scalar_t__ PERF_COUNT_HW_MAX ;
 scalar_t__ PERF_TYPE_HARDWARE ;
 scalar_t__ PERF_TYPE_HW_CACHE ;
 scalar_t__ PERF_TYPE_RAW ;
 int PTR_ERR (struct mips_perf_event const*) ;
 int hw_perf_event_destroy (struct perf_event*) ;
 int local64_set (int *,scalar_t__) ;
 TYPE_1__ mipspmu ;
 struct mips_perf_event* mipspmu_map_cache_event (scalar_t__) ;
 struct mips_perf_event* mipspmu_map_general_event (scalar_t__) ;
 int mipspmu_perf_event_encode (struct mips_perf_event const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw_event_mutex ;
 struct mips_perf_event* stub1 (scalar_t__) ;
 int stub2 (struct perf_event*) ;
 int validate_group (struct perf_event*) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 const struct mips_perf_event *pev;
 int err;


 if (PERF_TYPE_HARDWARE == event->attr.type) {
  if (event->attr.config >= PERF_COUNT_HW_MAX)
   return -EINVAL;
  pev = mipspmu_map_general_event(event->attr.config);
 } else if (PERF_TYPE_HW_CACHE == event->attr.type) {
  pev = mipspmu_map_cache_event(event->attr.config);
 } else if (PERF_TYPE_RAW == event->attr.type) {

  mutex_lock(&raw_event_mutex);
  pev = mipspmu.map_raw_event(event->attr.config);
 } else {

  return -EOPNOTSUPP;
 }

 if (IS_ERR(pev)) {
  if (PERF_TYPE_RAW == event->attr.type)
   mutex_unlock(&raw_event_mutex);
  return PTR_ERR(pev);
 }





 hwc->config_base = MIPS_PERFCTRL_IE;

 hwc->event_base = mipspmu_perf_event_encode(pev);
 if (PERF_TYPE_RAW == event->attr.type)
  mutex_unlock(&raw_event_mutex);

 if (!attr->exclude_user)
  hwc->config_base |= MIPS_PERFCTRL_U;
 if (!attr->exclude_kernel) {
  hwc->config_base |= MIPS_PERFCTRL_K;

  hwc->config_base |= MIPS_PERFCTRL_EXL;
 }
 if (!attr->exclude_hv)
  hwc->config_base |= MIPS_PERFCTRL_S;

 hwc->config_base &= M_PERFCTL_CONFIG_MASK;




 hwc->idx = -1;
 hwc->config = 0;

 if (!hwc->sample_period) {
  hwc->sample_period = mipspmu.max_period;
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 }

 err = 0;
 if (event->group_leader != event)
  err = validate_group(event);

 event->destroy = hw_perf_event_destroy;

 if (err)
  event->destroy(event);

 return err;
}
