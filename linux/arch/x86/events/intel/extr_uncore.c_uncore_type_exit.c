
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_type {int num_boxes; struct intel_uncore_pmu* events_group; struct intel_uncore_pmu* pmus; } ;
struct intel_uncore_pmu {int dummy; } ;


 int kfree (struct intel_uncore_pmu*) ;
 int uncore_free_boxes (struct intel_uncore_pmu*) ;
 int uncore_pmu_unregister (struct intel_uncore_pmu*) ;

__attribute__((used)) static void uncore_type_exit(struct intel_uncore_type *type)
{
 struct intel_uncore_pmu *pmu = type->pmus;
 int i;

 if (pmu) {
  for (i = 0; i < type->num_boxes; i++, pmu++) {
   uncore_pmu_unregister(pmu);
   uncore_free_boxes(pmu);
  }
  kfree(type->pmus);
  type->pmus = ((void*)0);
 }
 kfree(type->events_group);
 type->events_group = ((void*)0);
}
