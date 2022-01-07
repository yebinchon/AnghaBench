
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore_pmu {size_t pmu_idx; TYPE_1__* type; } ;
struct intel_uncore_box {struct intel_uncore_pmu* pmu; } ;
struct TYPE_2__ {int* msr_offsets; int msr_offset; } ;



__attribute__((used)) static inline unsigned uncore_msr_box_offset(struct intel_uncore_box *box)
{
 struct intel_uncore_pmu *pmu = box->pmu;
 return pmu->type->msr_offsets ?
  pmu->type->msr_offsets[pmu->pmu_idx] :
  pmu->type->msr_offset * pmu->pmu_idx;
}
