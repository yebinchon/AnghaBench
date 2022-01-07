
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_spapr_tce_table {unsigned long long page_shift; } ;
struct kvm {int dummy; } ;
struct iommu_table {unsigned long long it_page_shift; } ;


 unsigned long H_SUCCESS ;
 unsigned long kvmppc_tce_iommu_do_unmap (struct kvm*,struct iommu_table*,unsigned long) ;

__attribute__((used)) static long kvmppc_tce_iommu_unmap(struct kvm *kvm,
  struct kvmppc_spapr_tce_table *stt, struct iommu_table *tbl,
  unsigned long entry)
{
 unsigned long i, ret = H_SUCCESS;
 unsigned long subpages = 1ULL << (stt->page_shift - tbl->it_page_shift);
 unsigned long io_entry = entry * subpages;

 for (i = 0; i < subpages; ++i) {
  ret = kvmppc_tce_iommu_do_unmap(kvm, tbl, io_entry + i);
  if (ret != H_SUCCESS)
   break;
 }

 return ret;
}
