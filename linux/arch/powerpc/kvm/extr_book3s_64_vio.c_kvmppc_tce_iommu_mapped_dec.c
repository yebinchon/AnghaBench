
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_iommu_table_group_mem_t {int dummy; } ;
struct kvm {int mm; } ;
struct iommu_table {unsigned long long it_page_shift; } ;
typedef int __be64 ;


 long H_SUCCESS ;
 long H_TOO_HARD ;
 int * IOMMU_TABLE_USERSPACE_ENTRY_RO (struct iommu_table*,unsigned long) ;
 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 struct mm_iommu_table_group_mem_t* mm_iommu_lookup (int ,int ,unsigned long const) ;
 int mm_iommu_mapped_dec (struct mm_iommu_table_group_mem_t*) ;

__attribute__((used)) static long kvmppc_tce_iommu_mapped_dec(struct kvm *kvm,
  struct iommu_table *tbl, unsigned long entry)
{
 struct mm_iommu_table_group_mem_t *mem = ((void*)0);
 const unsigned long pgsize = 1ULL << tbl->it_page_shift;
 __be64 *pua = IOMMU_TABLE_USERSPACE_ENTRY_RO(tbl, entry);

 if (!pua)
  return H_SUCCESS;

 mem = mm_iommu_lookup(kvm->mm, be64_to_cpu(*pua), pgsize);
 if (!mem)
  return H_TOO_HARD;

 mm_iommu_mapped_dec(mem);

 *pua = cpu_to_be64(0);

 return H_SUCCESS;
}
