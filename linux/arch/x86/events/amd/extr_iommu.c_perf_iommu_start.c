
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int state; int iommu_cntr; int iommu_bank; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct amd_iommu {int dummy; } ;


 int IOMMU_PC_COUNTER_REG ;
 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int amd_iommu_pc_set_reg (struct amd_iommu*,int ,int ,int ,int *) ;
 int local64_read (int *) ;
 struct amd_iommu* perf_event_2_iommu (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_iommu_enable_event (struct perf_event*) ;

__attribute__((used)) static void perf_iommu_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 if (WARN_ON_ONCE(!(hwc->state & PERF_HES_STOPPED)))
  return;

 WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));
 hwc->state = 0;

 if (flags & PERF_EF_RELOAD) {
  u64 prev_raw_count = local64_read(&hwc->prev_count);
  struct amd_iommu *iommu = perf_event_2_iommu(event);

  amd_iommu_pc_set_reg(iommu, hwc->iommu_bank, hwc->iommu_cntr,
         IOMMU_PC_COUNTER_REG, &prev_raw_count);
 }

 perf_iommu_enable_event(event);
 perf_event_update_userpage(event);

}
