
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ config; scalar_t__ type; scalar_t__ sample_period; } ;
struct perf_event {TYPE_1__ attr; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ AMD_POWER_EVENTSEL_PKG ;
 scalar_t__ AMD_POWER_EVENT_MASK ;
 int EINVAL ;
 int ENOENT ;
 TYPE_2__ pmu_class ;

__attribute__((used)) static int pmu_event_init(struct perf_event *event)
{
 u64 cfg = event->attr.config & AMD_POWER_EVENT_MASK;


 if (event->attr.type != pmu_class.type)
  return -ENOENT;


 if (event->attr.sample_period)
  return -EINVAL;

 if (cfg != AMD_POWER_EVENTSEL_PKG)
  return -EINVAL;

 return 0;
}
