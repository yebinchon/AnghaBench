
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config2; int config1; } ;
struct hw_perf_event_extra {int config; scalar_t__ idx; int reg; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_2__ attr; struct hw_perf_event hw; } ;
struct intel_uncore_box {TYPE_1__* pmu; } ;
struct TYPE_3__ {scalar_t__ pmu_idx; } ;


 int NHMEX_PMON_CTL_EV_SEL_MASK ;
 int NHMEX_S0_MSR_MM_CFG ;
 int NHMEX_S1_MSR_MM_CFG ;
 int NHMEX_S_EVENT_TO_R_PROG_EV ;

__attribute__((used)) static int nhmex_sbox_hw_config(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 struct hw_perf_event_extra *reg2 = &hwc->branch_reg;


 if ((hwc->config & NHMEX_PMON_CTL_EV_SEL_MASK) !=
     NHMEX_S_EVENT_TO_R_PROG_EV)
  return 0;

 if (box->pmu->pmu_idx == 0)
  reg1->reg = NHMEX_S0_MSR_MM_CFG;
 else
  reg1->reg = NHMEX_S1_MSR_MM_CFG;
 reg1->idx = 0;
 reg1->config = event->attr.config1;
 reg2->config = event->attr.config2;
 return 0;
}
