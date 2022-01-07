
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int precise_ip; } ;
struct perf_event {TYPE_1__ attr; } ;


 void intel_pebs_aliases_precdist (struct perf_event*) ;
 void intel_pebs_aliases_snb (struct perf_event*) ;

__attribute__((used)) static void intel_pebs_aliases_ivb(struct perf_event *event)
{
 if (event->attr.precise_ip < 3)
  return intel_pebs_aliases_snb(event);
 return intel_pebs_aliases_precdist(event);
}
