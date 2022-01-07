
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int prev_count; int iommu_cntr; int iommu_bank; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;
struct amd_iommu {int dummy; } ;


 int COUNTER_SHIFT ;
 int GENMASK_ULL (int,int ) ;
 int IOMMU_PC_COUNTER_REG ;
 scalar_t__ amd_iommu_pc_get_reg (struct amd_iommu*,int ,int ,int ,int*) ;
 int local64_add (int,int *) ;
 int local64_cmpxchg (int *,int,int) ;
 int local64_read (int *) ;
 struct amd_iommu* perf_event_2_iommu (struct perf_event*) ;

__attribute__((used)) static void perf_iommu_read(struct perf_event *event)
{
 u64 count, prev, delta;
 struct hw_perf_event *hwc = &event->hw;
 struct amd_iommu *iommu = perf_event_2_iommu(event);

 if (amd_iommu_pc_get_reg(iommu, hwc->iommu_bank, hwc->iommu_cntr,
     IOMMU_PC_COUNTER_REG, &count))
  return;


 count &= GENMASK_ULL(47, 0);

 prev = local64_read(&hwc->prev_count);
 if (local64_cmpxchg(&hwc->prev_count, prev, count) != prev)
  return;


 delta = (count << COUNTER_SHIFT) - (prev << COUNTER_SHIFT);
 delta >>= COUNTER_SHIFT;
 local64_add(delta, &event->count);
}
