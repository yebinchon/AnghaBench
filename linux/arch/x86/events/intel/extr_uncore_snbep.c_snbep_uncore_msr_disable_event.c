
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {int dummy; } ;


 int wrmsrl (int ,int ) ;

__attribute__((used)) static void snbep_uncore_msr_disable_event(struct intel_uncore_box *box,
     struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 wrmsrl(hwc->config_base, hwc->config);
}
