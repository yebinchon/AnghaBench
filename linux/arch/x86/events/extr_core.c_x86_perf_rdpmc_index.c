
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_base_rdpmc; } ;
struct perf_event {TYPE_1__ hw; } ;


 int lockdep_assert_irqs_disabled () ;

int x86_perf_rdpmc_index(struct perf_event *event)
{
 lockdep_assert_irqs_disabled();

 return event->hw.event_base_rdpmc;
}
