
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event_extra {scalar_t__ idx; int reg; } ;
struct hw_perf_event {int config; int config_base; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {int dummy; } ;


 scalar_t__ EXTRA_REG_NONE ;
 int SNBEP_PMON_CTL_EN ;
 int uncore_shared_reg_config (struct intel_uncore_box*,int ) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void snbep_uncore_msr_enable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;

 if (reg1->idx != EXTRA_REG_NONE)
  wrmsrl(reg1->reg, uncore_shared_reg_config(box, 0));

 wrmsrl(hwc->config_base, hwc->config | SNBEP_PMON_CTL_EN);
}
