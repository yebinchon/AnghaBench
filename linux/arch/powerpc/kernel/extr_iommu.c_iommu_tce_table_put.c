
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int it_kref; } ;


 scalar_t__ WARN_ON (int) ;
 int iommu_table_free ;
 int kref_put (int *,int ) ;

int iommu_tce_table_put(struct iommu_table *tbl)
{
 if (WARN_ON(!tbl))
  return 0;

 return kref_put(&tbl->it_kref, iommu_table_free);
}
