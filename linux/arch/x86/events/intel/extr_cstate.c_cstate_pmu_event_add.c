
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int PERF_EF_START ;
 int cstate_pmu_event_start (struct perf_event*,int) ;

__attribute__((used)) static int cstate_pmu_event_add(struct perf_event *event, int mode)
{
 if (mode & PERF_EF_START)
  cstate_pmu_event_start(event, mode);

 return 0;
}
