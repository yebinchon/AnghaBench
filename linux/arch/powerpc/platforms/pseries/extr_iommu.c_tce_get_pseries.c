
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_base; } ;
typedef int __be64 ;


 unsigned long be64_to_cpu (int ) ;

__attribute__((used)) static unsigned long tce_get_pseries(struct iommu_table *tbl, long index)
{
 __be64 *tcep;

 tcep = ((__be64 *)tbl->it_base) + index;

 return be64_to_cpu(*tcep);
}
