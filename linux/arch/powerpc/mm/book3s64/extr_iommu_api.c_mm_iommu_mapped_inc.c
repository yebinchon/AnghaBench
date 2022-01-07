
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_iommu_table_group_mem_t {int mapped; } ;


 long ENXIO ;
 scalar_t__ atomic64_inc_not_zero (int *) ;

long mm_iommu_mapped_inc(struct mm_iommu_table_group_mem_t *mem)
{
 if (atomic64_inc_not_zero(&mem->mapped))
  return 0;


 return -ENXIO;
}
