
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct mm_iommu_table_group_mem_t {int dummy; } ;


 long mm_iommu_do_alloc (struct mm_struct*,unsigned long,unsigned long,unsigned long,struct mm_iommu_table_group_mem_t**) ;

long mm_iommu_newdev(struct mm_struct *mm, unsigned long ua,
  unsigned long entries, unsigned long dev_hpa,
  struct mm_iommu_table_group_mem_t **pmem)
{
 return mm_iommu_do_alloc(mm, ua, entries, dev_hpa, pmem);
}
