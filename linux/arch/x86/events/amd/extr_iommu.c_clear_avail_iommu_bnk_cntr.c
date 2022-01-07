
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct perf_amd_iommu {int max_banks; int max_counters; unsigned long long cntr_assign_mask; int lock; } ;


 int EINVAL ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int clear_avail_iommu_bnk_cntr(struct perf_amd_iommu *perf_iommu,
     u8 bank, u8 cntr)
{
 unsigned long flags;
 int max_banks, max_cntrs;
 int shift = 0;

 max_banks = perf_iommu->max_banks;
 max_cntrs = perf_iommu->max_counters;

 if ((bank > max_banks) || (cntr > max_cntrs))
  return -EINVAL;

 shift = bank + cntr + (bank*3);

 raw_spin_lock_irqsave(&perf_iommu->lock, flags);
 perf_iommu->cntr_assign_mask &= ~(1ULL<<shift);
 raw_spin_unlock_irqrestore(&perf_iommu->lock, flags);

 return 0;
}
