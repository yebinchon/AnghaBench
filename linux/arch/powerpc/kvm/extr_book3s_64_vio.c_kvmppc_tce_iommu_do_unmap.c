
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int mm; } ;
struct iommu_table {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_NONE ;
 long H_SUCCESS ;
 long H_TOO_HARD ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int iommu_tce_xchg_no_kill (int ,struct iommu_table*,unsigned long,unsigned long*,int*) ;
 long kvmppc_tce_iommu_mapped_dec (struct kvm*,struct iommu_table*,unsigned long) ;

__attribute__((used)) static long kvmppc_tce_iommu_do_unmap(struct kvm *kvm,
  struct iommu_table *tbl, unsigned long entry)
{
 enum dma_data_direction dir = DMA_NONE;
 unsigned long hpa = 0;
 long ret;

 if (WARN_ON_ONCE(iommu_tce_xchg_no_kill(kvm->mm, tbl, entry, &hpa,
     &dir)))
  return H_TOO_HARD;

 if (dir == DMA_NONE)
  return H_SUCCESS;

 ret = kvmppc_tce_iommu_mapped_dec(kvm, tbl, entry);
 if (ret != H_SUCCESS)
  iommu_tce_xchg_no_kill(kvm->mm, tbl, entry, &hpa, &dir);

 return ret;
}
