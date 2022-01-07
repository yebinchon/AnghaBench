
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ lbr_sel_map; int lbr_nr; } ;


 int EOPNOTSUPP ;
 int intel_pmu_setup_hw_lbr_filter (struct perf_event*) ;
 int intel_pmu_setup_sw_lbr_filter (struct perf_event*) ;
 TYPE_1__ x86_pmu ;

int intel_pmu_setup_lbr_filter(struct perf_event *event)
{
 int ret = 0;




 if (!x86_pmu.lbr_nr)
  return -EOPNOTSUPP;




 ret = intel_pmu_setup_sw_lbr_filter(event);
 if (ret)
  return ret;




 if (x86_pmu.lbr_sel_map)
  ret = intel_pmu_setup_hw_lbr_filter(event);

 return ret;
}
