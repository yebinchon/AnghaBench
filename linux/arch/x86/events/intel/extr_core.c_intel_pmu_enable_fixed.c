
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {scalar_t__ precise_ip; } ;
struct hw_perf_event {int idx; int config; int config_base; } ;
struct perf_event {TYPE_2__ attr; struct hw_perf_event hw; } ;
struct TYPE_4__ {scalar_t__ pebs_baseline; } ;
struct TYPE_6__ {int version; TYPE_1__ intel_cap; } ;


 int ARCH_PERFMON_EVENTSEL_ANY ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;
 int ICL_FIXED_0_ADAPTIVE ;
 int INTEL_PMC_IDX_FIXED ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static void intel_pmu_enable_fixed(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx - INTEL_PMC_IDX_FIXED;
 u64 ctrl_val, mask, bits = 0;






 if (!event->attr.precise_ip)
  bits |= 0x8;
 if (hwc->config & ARCH_PERFMON_EVENTSEL_USR)
  bits |= 0x2;
 if (hwc->config & ARCH_PERFMON_EVENTSEL_OS)
  bits |= 0x1;




 if (x86_pmu.version > 2 && hwc->config & ARCH_PERFMON_EVENTSEL_ANY)
  bits |= 0x4;

 bits <<= (idx * 4);
 mask = 0xfULL << (idx * 4);

 if (x86_pmu.intel_cap.pebs_baseline && event->attr.precise_ip) {
  bits |= ICL_FIXED_0_ADAPTIVE << (idx * 4);
  mask |= ICL_FIXED_0_ADAPTIVE << (idx * 4);
 }

 rdmsrl(hwc->config_base, ctrl_val);
 ctrl_val &= ~mask;
 ctrl_val |= bits;
 wrmsrl(hwc->config_base, ctrl_val);
}
