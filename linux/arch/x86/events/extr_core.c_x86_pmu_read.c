
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_2__ {void (* read ) (struct perf_event*) ;} ;


 void stub1 (struct perf_event*) ;
 int x86_perf_event_update (struct perf_event*) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline void x86_pmu_read(struct perf_event *event)
{
 if (x86_pmu.read)
  return x86_pmu.read(event);
 x86_perf_event_update(event);
}
