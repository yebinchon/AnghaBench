
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event_extra {int idx; int config; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {int dummy; } ;


 int NHMEX_R_PMON_CTL_EV_SEL_SHIFT ;

__attribute__((used)) static void nhmex_rbox_alter_er(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;


 if (reg1->idx % 2) {
  reg1->idx--;
  hwc->config -= 1 << NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
 } else {
  reg1->idx++;
  hwc->config += 1 << NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
 }


 switch (reg1->idx % 6) {
 case 2:

  reg1->config >>= 8;
  break;
 case 3:

  reg1->config <<= 8;
  break;
 }
}
