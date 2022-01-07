
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_3__ {int pebs_output_pt_available; } ;
struct TYPE_4__ {TYPE_1__ intel_cap; } ;


 int is_intel_pt_event (struct perf_event*) ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static int intel_pmu_aux_output_match(struct perf_event *event)
{
 if (!x86_pmu.intel_cap.pebs_output_pt_available)
  return 0;

 return is_intel_pt_event(event);
}
