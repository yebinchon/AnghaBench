
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int * pmu; } ;


 int pmu ;

__attribute__((used)) static inline int is_x86_event(struct perf_event *event)
{
 return event->pmu == &pmu;
}
