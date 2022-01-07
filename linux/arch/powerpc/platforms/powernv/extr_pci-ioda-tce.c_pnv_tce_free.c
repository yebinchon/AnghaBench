
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {long it_offset; int it_level_size; } ;
typedef int __be64 ;


 int cpu_to_be64 (int ) ;
 int * pnv_tce (struct iommu_table*,int,unsigned long,int) ;

void pnv_tce_free(struct iommu_table *tbl, long index, long npages)
{
 long i;

 for (i = 0; i < npages; i++) {
  unsigned long idx = index - tbl->it_offset + i;
  __be64 *ptce = pnv_tce(tbl, 0, idx, 0);

  if (ptce)
   *ptce = cpu_to_be64(0);
  else

   i |= tbl->it_level_size - 1;
 }
}
