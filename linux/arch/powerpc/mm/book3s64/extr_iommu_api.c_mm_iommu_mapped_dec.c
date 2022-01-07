
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_iommu_table_group_mem_t {int mapped; } ;


 int atomic64_add_unless (int *,int,int) ;

void mm_iommu_mapped_dec(struct mm_iommu_table_group_mem_t *mem)
{
 atomic64_add_unless(&mem->mapped, -1, 1);
}
