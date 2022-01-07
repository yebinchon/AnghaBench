
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table_group {struct iommu_table** tables; } ;
struct iommu_table {int it_kref; int it_group_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int kfree (struct iommu_table_group*) ;
 int kref_init (int *) ;
 void* kzalloc_node (int,int ,int) ;

__attribute__((used)) static struct iommu_table_group *iommu_pseries_alloc_group(int node)
{
 struct iommu_table_group *table_group;
 struct iommu_table *tbl;

 table_group = kzalloc_node(sizeof(struct iommu_table_group), GFP_KERNEL,
      node);
 if (!table_group)
  return ((void*)0);

 tbl = kzalloc_node(sizeof(struct iommu_table), GFP_KERNEL, node);
 if (!tbl)
  goto free_group;

 INIT_LIST_HEAD_RCU(&tbl->it_group_list);
 kref_init(&tbl->it_kref);

 table_group->tables[0] = tbl;

 return table_group;

free_group:
 kfree(table_group);
 return ((void*)0);
}
