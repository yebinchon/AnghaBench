
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int P4_CCCR_ENABLE ;
 int P4_CCCR_OVF ;
 int P4_CCCR_RESERVED ;
 int p4_config_unpack_cccr (int ) ;
 int wrmsrl_safe (int ,int) ;

__attribute__((used)) static inline void p4_pmu_disable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;






 (void)wrmsrl_safe(hwc->config_base,
  p4_config_unpack_cccr(hwc->config) & ~P4_CCCR_ENABLE & ~P4_CCCR_OVF & ~P4_CCCR_RESERVED);
}
