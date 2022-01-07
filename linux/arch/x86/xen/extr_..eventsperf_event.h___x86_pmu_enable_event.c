
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int config; scalar_t__ reg; } ;
struct hw_perf_event {int config; scalar_t__ config_base; TYPE_1__ extra_reg; } ;
struct TYPE_4__ {int perf_ctr_virt_mask; } ;


 int __this_cpu_read (int ) ;
 TYPE_2__ cpu_hw_events ;
 int wrmsrl (scalar_t__,int) ;

__attribute__((used)) static inline void __x86_pmu_enable_event(struct hw_perf_event *hwc,
       u64 enable_mask)
{
 u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);

 if (hwc->extra_reg.reg)
  wrmsrl(hwc->extra_reg.reg, hwc->extra_reg.config);
 wrmsrl(hwc->config_base, (hwc->config | enable_mask) & ~disable_mask);
}
