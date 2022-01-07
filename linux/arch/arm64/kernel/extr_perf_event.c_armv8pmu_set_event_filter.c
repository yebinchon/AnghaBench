
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ exclude_user; scalar_t__ exclude_kernel; scalar_t__ exclude_host; int exclude_hv; scalar_t__ exclude_guest; scalar_t__ exclude_idle; } ;
struct hw_perf_event {unsigned long config_base; } ;


 unsigned long ARMV8_PMU_EXCLUDE_EL0 ;
 unsigned long ARMV8_PMU_EXCLUDE_EL1 ;
 unsigned long ARMV8_PMU_INCLUDE_EL2 ;
 int EPERM ;
 scalar_t__ is_kernel_in_hyp_mode () ;

__attribute__((used)) static int armv8pmu_set_event_filter(struct hw_perf_event *event,
         struct perf_event_attr *attr)
{
 unsigned long config_base = 0;

 if (attr->exclude_idle)
  return -EPERM;







 if (is_kernel_in_hyp_mode()) {
  if (!attr->exclude_kernel && !attr->exclude_host)
   config_base |= ARMV8_PMU_INCLUDE_EL2;
  if (attr->exclude_guest)
   config_base |= ARMV8_PMU_EXCLUDE_EL1;
  if (attr->exclude_host)
   config_base |= ARMV8_PMU_EXCLUDE_EL0;
 } else {
  if (!attr->exclude_hv && !attr->exclude_host)
   config_base |= ARMV8_PMU_INCLUDE_EL2;
 }




 if (attr->exclude_kernel)
  config_base |= ARMV8_PMU_EXCLUDE_EL1;

 if (attr->exclude_user)
  config_base |= ARMV8_PMU_EXCLUDE_EL0;





 event->config_base = config_base;

 return 0;
}
