
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int config; } ;
struct perf_event {TYPE_3__ hw; } ;
struct intel_uncore_pmu {int pmu_idx; TYPE_2__* type; } ;
struct intel_uncore_box {struct intel_uncore_pmu* pmu; } ;
struct TYPE_5__ {TYPE_1__* freerunning; } ;
struct TYPE_4__ {unsigned int counter_base; unsigned int counter_offset; int box_offset; } ;


 unsigned int uncore_freerunning_idx (int ) ;
 unsigned int uncore_freerunning_type (int ) ;

__attribute__((used)) static inline
unsigned int uncore_freerunning_counter(struct intel_uncore_box *box,
     struct perf_event *event)
{
 unsigned int type = uncore_freerunning_type(event->hw.config);
 unsigned int idx = uncore_freerunning_idx(event->hw.config);
 struct intel_uncore_pmu *pmu = box->pmu;

 return pmu->type->freerunning[type].counter_base +
        pmu->type->freerunning[type].counter_offset * idx +
        pmu->type->freerunning[type].box_offset * pmu->pmu_idx;
}
