
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore_box {TYPE_1__* pmu; int flags; } ;
struct TYPE_4__ {int perf_ctr; scalar_t__ pair_ctr_ctl; } ;
struct TYPE_3__ {TYPE_2__* type; } ;


 int CFL_UNC_CBO_7_PER_CTR0 ;
 int UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS ;
 scalar_t__ test_bit (int ,int *) ;
 int uncore_msr_box_offset (struct intel_uncore_box*) ;

__attribute__((used)) static inline
unsigned uncore_msr_perf_ctr(struct intel_uncore_box *box, int idx)
{
 if (test_bit(UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS, &box->flags)) {
  return CFL_UNC_CBO_7_PER_CTR0 +
         (box->pmu->type->pair_ctr_ctl ? 2 * idx : idx);
 } else {
  return box->pmu->type->perf_ctr +
         (box->pmu->type->pair_ctr_ctl ? 2 * idx : idx) +
         uncore_msr_box_offset(box);
 }
}
