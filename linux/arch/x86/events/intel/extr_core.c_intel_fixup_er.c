
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int idx; int reg; } ;
struct TYPE_7__ {TYPE_2__ extra_reg; int config; } ;
struct perf_event {TYPE_3__ hw; } ;
struct TYPE_8__ {TYPE_1__* extra_regs; } ;
struct TYPE_5__ {int event; } ;


 int EXTRA_REG_RSP_0 ;
 int EXTRA_REG_RSP_1 ;
 int INTEL_ARCH_EVENT_MASK ;
 int MSR_OFFCORE_RSP_0 ;
 int MSR_OFFCORE_RSP_1 ;
 TYPE_4__ x86_pmu ;

__attribute__((used)) static void intel_fixup_er(struct perf_event *event, int idx)
{
 event->hw.extra_reg.idx = idx;

 if (idx == EXTRA_REG_RSP_0) {
  event->hw.config &= ~INTEL_ARCH_EVENT_MASK;
  event->hw.config |= x86_pmu.extra_regs[EXTRA_REG_RSP_0].event;
  event->hw.extra_reg.reg = MSR_OFFCORE_RSP_0;
 } else if (idx == EXTRA_REG_RSP_1) {
  event->hw.config &= ~INTEL_ARCH_EVENT_MASK;
  event->hw.config |= x86_pmu.extra_regs[EXTRA_REG_RSP_1].event;
  event->hw.extra_reg.reg = MSR_OFFCORE_RSP_1;
 }
}
