
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static unsigned long kvmppc_tce_pages(unsigned long iommu_pages)
{
 return ALIGN(iommu_pages * sizeof(u64), PAGE_SIZE) / PAGE_SIZE;
}
