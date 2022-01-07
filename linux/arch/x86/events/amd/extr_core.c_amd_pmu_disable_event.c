
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 int amd_pmu_wait_on_overflow (int ) ;
 scalar_t__ in_nmi () ;
 int x86_pmu_disable_event (struct perf_event*) ;

__attribute__((used)) static void amd_pmu_disable_event(struct perf_event *event)
{
 x86_pmu_disable_event(event);
 if (in_nmi())
  return;

 amd_pmu_wait_on_overflow(event->hw.idx);
}
