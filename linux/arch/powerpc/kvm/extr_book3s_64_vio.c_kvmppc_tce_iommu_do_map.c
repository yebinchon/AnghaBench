
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_iommu_table_group_mem_t {int dummy; } ;
struct kvm {int mm; } ;
struct iommu_table {unsigned long long it_page_shift; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int __be64 ;


 int DMA_NONE ;
 long H_TOO_HARD ;
 int * IOMMU_TABLE_USERSPACE_ENTRY (struct iommu_table*,unsigned long) ;
 scalar_t__ WARN_ON_ONCE (long) ;
 int cpu_to_be64 (unsigned long) ;
 long iommu_tce_xchg_no_kill (int ,struct iommu_table*,unsigned long,unsigned long*,int*) ;
 int kvmppc_tce_iommu_mapped_dec (struct kvm*,struct iommu_table*,unsigned long) ;
 struct mm_iommu_table_group_mem_t* mm_iommu_lookup (int ,unsigned long,unsigned long long) ;
 int mm_iommu_mapped_dec (struct mm_iommu_table_group_mem_t*) ;
 scalar_t__ mm_iommu_mapped_inc (struct mm_iommu_table_group_mem_t*) ;
 long mm_iommu_ua_to_hpa (struct mm_iommu_table_group_mem_t*,unsigned long,unsigned long long,unsigned long*) ;

long kvmppc_tce_iommu_do_map(struct kvm *kvm, struct iommu_table *tbl,
  unsigned long entry, unsigned long ua,
  enum dma_data_direction dir)
{
 long ret;
 unsigned long hpa;
 __be64 *pua = IOMMU_TABLE_USERSPACE_ENTRY(tbl, entry);
 struct mm_iommu_table_group_mem_t *mem;

 if (!pua)

  return H_TOO_HARD;

 mem = mm_iommu_lookup(kvm->mm, ua, 1ULL << tbl->it_page_shift);
 if (!mem)

  return H_TOO_HARD;

 if (WARN_ON_ONCE(mm_iommu_ua_to_hpa(mem, ua, tbl->it_page_shift, &hpa)))
  return H_TOO_HARD;

 if (mm_iommu_mapped_inc(mem))
  return H_TOO_HARD;

 ret = iommu_tce_xchg_no_kill(kvm->mm, tbl, entry, &hpa, &dir);
 if (WARN_ON_ONCE(ret)) {
  mm_iommu_mapped_dec(mem);
  return H_TOO_HARD;
 }

 if (dir != DMA_NONE)
  kvmppc_tce_iommu_mapped_dec(kvm, tbl, entry);

 *pua = cpu_to_be64(ua);

 return 0;
}
