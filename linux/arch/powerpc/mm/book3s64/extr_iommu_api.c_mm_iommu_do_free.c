
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_iommu_table_group_mem_t {int hpas; } ;


 int kfree (struct mm_iommu_table_group_mem_t*) ;
 int mm_iommu_unpin (struct mm_iommu_table_group_mem_t*) ;
 int vfree (int ) ;

__attribute__((used)) static void mm_iommu_do_free(struct mm_iommu_table_group_mem_t *mem)
{

 mm_iommu_unpin(mem);
 vfree(mem->hpas);
 kfree(mem);
}
