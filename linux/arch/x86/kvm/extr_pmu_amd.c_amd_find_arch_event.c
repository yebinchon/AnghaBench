
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct kvm_pmu {int dummy; } ;
struct TYPE_3__ {scalar_t__ eventsel; scalar_t__ unit_mask; int event_type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int PERF_COUNT_HW_MAX ;
 TYPE_1__* amd_event_mapping ;

__attribute__((used)) static unsigned amd_find_arch_event(struct kvm_pmu *pmu,
        u8 event_select,
        u8 unit_mask)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(amd_event_mapping); i++)
  if (amd_event_mapping[i].eventsel == event_select
      && amd_event_mapping[i].unit_mask == unit_mask)
   break;

 if (i == ARRAY_SIZE(amd_event_mapping))
  return PERF_COUNT_HW_MAX;

 return amd_event_mapping[i].event_type;
}
