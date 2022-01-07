
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct kvm_pmu {int available_event_types; } ;
struct TYPE_3__ {scalar_t__ eventsel; scalar_t__ unit_mask; int event_type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int PERF_COUNT_HW_MAX ;
 TYPE_1__* intel_arch_events ;

__attribute__((used)) static unsigned intel_find_arch_event(struct kvm_pmu *pmu,
          u8 event_select,
          u8 unit_mask)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(intel_arch_events); i++)
  if (intel_arch_events[i].eventsel == event_select
      && intel_arch_events[i].unit_mask == unit_mask
      && (pmu->available_event_types & (1 << i)))
   break;

 if (i == ARRAY_SIZE(intel_arch_events))
  return PERF_COUNT_HW_MAX;

 return intel_arch_events[i].event_type;
}
