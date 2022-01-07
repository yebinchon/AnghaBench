
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct hw_perf_event {int iommu_cntr; int iommu_bank; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct amd_iommu {int dummy; } ;


 int IOMMU_PC_COUNTER_SRC_REG ;
 int amd_iommu_pc_set_reg (struct amd_iommu*,int ,int ,int ,unsigned long long*) ;
 struct amd_iommu* perf_event_2_iommu (struct perf_event*) ;

__attribute__((used)) static void perf_iommu_disable_event(struct perf_event *event)
{
 struct amd_iommu *iommu = perf_event_2_iommu(event);
 struct hw_perf_event *hwc = &event->hw;
 u64 reg = 0ULL;

 amd_iommu_pc_set_reg(iommu, hwc->iommu_bank, hwc->iommu_cntr,
        IOMMU_PC_COUNTER_SRC_REG, &reg);
}
