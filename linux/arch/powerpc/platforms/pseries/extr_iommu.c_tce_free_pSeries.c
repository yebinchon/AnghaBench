
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_base; } ;
typedef int __be64 ;



__attribute__((used)) static void tce_free_pSeries(struct iommu_table *tbl, long index, long npages)
{
 __be64 *tcep;

 tcep = ((__be64 *)tbl->it_base) + index;

 while (npages--)
  *(tcep++) = 0;
}
