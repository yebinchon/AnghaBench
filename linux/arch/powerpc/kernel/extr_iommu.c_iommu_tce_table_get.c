
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int it_kref; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

struct iommu_table *iommu_tce_table_get(struct iommu_table *tbl)
{
 if (kref_get_unless_zero(&tbl->it_kref))
  return tbl;

 return ((void*)0);
}
