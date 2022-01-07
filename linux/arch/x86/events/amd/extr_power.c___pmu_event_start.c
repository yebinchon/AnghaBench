
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int pwr_acc; int ptsc; } ;
struct perf_event {TYPE_1__ hw; } ;


 int MSR_F15H_CU_PWR_ACCUMULATOR ;
 int MSR_F15H_PTSC ;
 int PERF_HES_STOPPED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static void __pmu_event_start(struct perf_event *event)
{
 if (WARN_ON_ONCE(!(event->hw.state & PERF_HES_STOPPED)))
  return;

 event->hw.state = 0;

 rdmsrl(MSR_F15H_PTSC, event->hw.ptsc);
 rdmsrl(MSR_F15H_CU_PWR_ACCUMULATOR, event->hw.pwr_acc);
}
