
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


 int NHMEX_B0_MSR_MATCH ;
 int NHMEX_B1_MSR_MATCH ;
 int NHMEX_B_PMON_CTL_EV_SEL_MASK ;
 int NHMEX_B_PMON_CTL_EV_SEL_SHIFT ;
 int NHMEX_B_PMON_CTR_MASK ;
 int NHMEX_B_PMON_CTR_SHIFT ;

__attribute__((used)) static int nhmex_bbox_hw_config(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 struct hw_perf_event_extra *reg2 = &hwc->branch_reg;
 int ctr, ev_sel;

 ctr = (hwc->config & NHMEX_B_PMON_CTR_MASK) >>
  NHMEX_B_PMON_CTR_SHIFT;
 ev_sel = (hwc->config & NHMEX_B_PMON_CTL_EV_SEL_MASK) >>
    NHMEX_B_PMON_CTL_EV_SEL_SHIFT;


 if ((ctr == 0 && ev_sel > 0x3) || (ctr == 1 && ev_sel > 0x6) ||
     (ctr == 2 && ev_sel != 0x4) || ctr == 3)
  return 0;

 if (box->pmu->pmu_idx == 0)
  reg1->reg = NHMEX_B0_MSR_MATCH;
 else
  reg1->reg = NHMEX_B1_MSR_MATCH;
 reg1->idx = 0;
 reg1->config = event->attr.config1;
 reg2->config = event->attr.config2;
 return 0;
}
