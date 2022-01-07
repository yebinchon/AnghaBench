
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int type; int config; } ;
struct hw_perf_event {int config; int idx; } ;
struct perf_event {int (* destroy ) (struct perf_event*) ;struct perf_event_attr attr; struct hw_perf_event hw; } ;
struct TYPE_2__ {int (* map_hw_event ) (int ) ;int (* map_cache_event ) (int ) ;} ;


 int EBUSY ;
 int ENOENT ;
 int EOPNOTSUPP ;



 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int pr_warn (char*) ;
 int reserve_pmc_hardware () ;
 int riscv_active_events ;
 int riscv_event_destroy (struct perf_event*) ;
 TYPE_1__* riscv_pmu ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (struct perf_event*) ;

__attribute__((used)) static int riscv_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 int err;
 int code;

 if (atomic_inc_return(&riscv_active_events) == 1) {
  err = reserve_pmc_hardware();

  if (err) {
   pr_warn("PMC hardware not available\n");
   atomic_dec(&riscv_active_events);
   return -EBUSY;
  }
 }

 switch (event->attr.type) {
 case 130:
  code = riscv_pmu->map_hw_event(attr->config);
  break;
 case 129:
  code = riscv_pmu->map_cache_event(attr->config);
  break;
 case 128:
  return -EOPNOTSUPP;
 default:
  return -ENOENT;
 }

 event->destroy = riscv_event_destroy;
 if (code < 0) {
  event->destroy(event);
  return code;
 }
 hwc->config = code;
 hwc->idx = -1;

 return 0;
}
