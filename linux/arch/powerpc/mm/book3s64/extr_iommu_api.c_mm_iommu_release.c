
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_iommu_table_group_mem_t {int rcu; int next; } ;


 int call_rcu (int *,int ) ;
 int list_del_rcu (int *) ;
 int mm_iommu_free ;

__attribute__((used)) static void mm_iommu_release(struct mm_iommu_table_group_mem_t *mem)
{
 list_del_rcu(&mem->next);
 call_rcu(&mem->rcu, mm_iommu_free);
}
