
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct mm_iommu_table_group_mem_t {unsigned long ua; long const entries; unsigned int pageshift; unsigned long* hpas; unsigned long dev_hpa; } ;


 long EFAULT ;
 unsigned long MM_IOMMU_TABLE_GROUP_PAGE_MASK ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;

long mm_iommu_ua_to_hpa(struct mm_iommu_table_group_mem_t *mem,
  unsigned long ua, unsigned int pageshift, unsigned long *hpa)
{
 const long entry = (ua - mem->ua) >> PAGE_SHIFT;
 u64 *va;

 if (entry >= mem->entries)
  return -EFAULT;

 if (pageshift > mem->pageshift)
  return -EFAULT;

 if (!mem->hpas) {
  *hpa = mem->dev_hpa + (ua - mem->ua);
  return 0;
 }

 va = &mem->hpas[entry];
 *hpa = (*va & MM_IOMMU_TABLE_GROUP_PAGE_MASK) | (ua & ~PAGE_MASK);

 return 0;
}
