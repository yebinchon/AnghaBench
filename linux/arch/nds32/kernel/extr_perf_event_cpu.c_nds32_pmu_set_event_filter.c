
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ exclude_kernel; scalar_t__ exclude_user; } ;
struct hw_perf_event {int idx; unsigned long config_base; } ;


 unsigned long* PFM_CTL_KS ;
 unsigned long* PFM_CTL_KU ;

__attribute__((used)) static int nds32_pmu_set_event_filter(struct hw_perf_event *event,
          struct perf_event_attr *attr)
{
 unsigned long config_base = 0;
 int idx = event->idx;
 unsigned long no_kernel_tracing = 0;
 unsigned long no_user_tracing = 0;

 if (idx == -1)
  return 0;

 no_kernel_tracing = PFM_CTL_KS[idx];
 no_user_tracing = PFM_CTL_KU[idx];



 if (attr->exclude_user)
  config_base |= no_user_tracing;

 if (attr->exclude_kernel)
  config_base |= no_kernel_tracing;





 event->config_base |= config_base;
 return 0;
}
