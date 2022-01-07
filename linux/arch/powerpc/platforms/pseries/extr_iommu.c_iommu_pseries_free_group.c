
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table_group {scalar_t__ group; struct iommu_table** tables; } ;
struct iommu_table {int dummy; } ;


 int BUG_ON (scalar_t__) ;
 int iommu_group_put (scalar_t__) ;
 int iommu_tce_table_put (struct iommu_table*) ;
 int kfree (struct iommu_table_group*) ;

__attribute__((used)) static void iommu_pseries_free_group(struct iommu_table_group *table_group,
  const char *node_name)
{
 struct iommu_table *tbl;

 if (!table_group)
  return;

 tbl = table_group->tables[0];






 iommu_tce_table_put(tbl);

 kfree(table_group);
}
