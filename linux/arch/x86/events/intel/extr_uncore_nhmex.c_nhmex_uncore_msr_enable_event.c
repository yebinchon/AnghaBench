
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_perf_event {scalar_t__ idx; int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {TYPE_2__* pmu; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int event_mask; } ;


 int NHMEX_PMON_CTL_EN_BIT0 ;
 int NHMEX_PMON_CTL_EN_BIT22 ;
 scalar_t__ UNCORE_PMC_IDX_FIXED ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void nhmex_uncore_msr_enable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 if (hwc->idx == UNCORE_PMC_IDX_FIXED)
  wrmsrl(hwc->config_base, NHMEX_PMON_CTL_EN_BIT0);
 else if (box->pmu->type->event_mask & NHMEX_PMON_CTL_EN_BIT0)
  wrmsrl(hwc->config_base, hwc->config | NHMEX_PMON_CTL_EN_BIT22);
 else
  wrmsrl(hwc->config_base, hwc->config | NHMEX_PMON_CTL_EN_BIT0);
}
