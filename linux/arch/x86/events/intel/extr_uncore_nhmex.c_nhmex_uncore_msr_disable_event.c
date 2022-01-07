
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;


 int wrmsrl (int ,int ) ;

__attribute__((used)) static void nhmex_uncore_msr_disable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 wrmsrl(event->hw.config_base, 0);
}
