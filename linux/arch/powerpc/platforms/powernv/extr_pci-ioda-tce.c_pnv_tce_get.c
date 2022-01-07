
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_offset; } ;
typedef int __be64 ;


 unsigned long be64_to_cpu (int ) ;
 int * pnv_tce (struct iommu_table*,int,scalar_t__,int) ;

unsigned long pnv_tce_get(struct iommu_table *tbl, long index)
{
 __be64 *ptce = pnv_tce(tbl, 0, index - tbl->it_offset, 0);

 if (!ptce)
  return 0;

 return be64_to_cpu(*ptce);
}
