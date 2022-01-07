
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore_box {TYPE_2__* pmu; } ;
struct TYPE_4__ {int pmu_idx; TYPE_1__* type; } ;
struct TYPE_3__ {unsigned int box_ctl; int mmio_offset; } ;



__attribute__((used)) static inline
unsigned int uncore_mmio_box_ctl(struct intel_uncore_box *box)
{
 return box->pmu->type->box_ctl +
        box->pmu->type->mmio_offset * box->pmu->pmu_idx;
}
