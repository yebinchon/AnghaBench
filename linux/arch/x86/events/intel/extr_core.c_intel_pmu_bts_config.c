
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {scalar_t__ precise_ip; int exclude_kernel; } ;
struct perf_event {int destroy; struct perf_event_attr attr; } ;
struct TYPE_2__ {int bts_active; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int hw_perf_lbr_event_destroy ;
 int intel_pmu_has_bts (struct perf_event*) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ x86_add_exclusive (int ) ;
 int x86_lbr_exclusive_lbr ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int intel_pmu_bts_config(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;

 if (unlikely(intel_pmu_has_bts(event))) {

  if (!x86_pmu.bts_active)
   return -EOPNOTSUPP;


  if (!attr->exclude_kernel)
   return -EOPNOTSUPP;


  if (attr->precise_ip)
   return -EOPNOTSUPP;


  if (x86_add_exclusive(x86_lbr_exclusive_lbr))
   return -EBUSY;

  event->destroy = hw_perf_lbr_event_destroy;
 }

 return 0;
}
