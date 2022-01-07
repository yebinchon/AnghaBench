
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int event_base; int config_base; } ;


 int ARCH_P4_UNFLAGGED_BIT ;
 int P4_CCCR_OVF ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static inline int p4_pmu_clear_cccr_ovf(struct hw_perf_event *hwc)
{
 u64 v;


 rdmsrl(hwc->config_base, v);
 if (v & P4_CCCR_OVF) {
  wrmsrl(hwc->config_base, v & ~P4_CCCR_OVF);
  return 1;
 }
 rdmsrl(hwc->event_base, v);
 if (!(v & ARCH_P4_UNFLAGGED_BIT))
  return 1;

 return 0;
}
