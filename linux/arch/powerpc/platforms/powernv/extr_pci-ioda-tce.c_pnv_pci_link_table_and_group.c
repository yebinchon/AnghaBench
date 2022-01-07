
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table_group_link {int next; struct iommu_table_group* table_group; } ;
struct iommu_table_group {int * tables; } ;
struct iommu_table {int it_group_list; } ;


 long EINVAL ;
 long ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int iommu_tce_table_get (struct iommu_table*) ;
 struct iommu_table_group_link* kzalloc_node (int,int ,int) ;
 int list_add_rcu (int *,int *) ;

long pnv_pci_link_table_and_group(int node, int num,
  struct iommu_table *tbl,
  struct iommu_table_group *table_group)
{
 struct iommu_table_group_link *tgl = ((void*)0);

 if (WARN_ON(!tbl || !table_group))
  return -EINVAL;

 tgl = kzalloc_node(sizeof(struct iommu_table_group_link), GFP_KERNEL,
   node);
 if (!tgl)
  return -ENOMEM;

 tgl->table_group = table_group;
 list_add_rcu(&tgl->next, &tbl->it_group_list);

 table_group->tables[num] = iommu_tce_table_get(tbl);

 return 0;
}
