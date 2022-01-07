
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 int armv8pmu_enable_intens (int ) ;

__attribute__((used)) static inline int armv8pmu_enable_event_irq(struct perf_event *event)
{
 return armv8pmu_enable_intens(event->hw.idx);
}
