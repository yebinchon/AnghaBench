
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int event_type (struct perf_event*) ;

__attribute__((used)) static int mpc8xx_pmu_event_init(struct perf_event *event)
{
 int type = event_type(event);

 if (type < 0)
  return type;
 return 0;
}
