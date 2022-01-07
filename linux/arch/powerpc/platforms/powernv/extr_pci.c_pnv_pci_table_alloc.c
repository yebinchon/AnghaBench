
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int it_kref; int it_group_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int kref_init (int *) ;
 struct iommu_table* kzalloc_node (int,int ,int) ;

struct iommu_table *pnv_pci_table_alloc(int nid)
{
 struct iommu_table *tbl;

 tbl = kzalloc_node(sizeof(struct iommu_table), GFP_KERNEL, nid);
 if (!tbl)
  return ((void*)0);

 INIT_LIST_HEAD_RCU(&tbl->it_group_list);
 kref_init(&tbl->it_kref);

 return tbl;
}
