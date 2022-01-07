
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DVMA_PAGE_MASK ;
 unsigned long DVMA_PAGE_SHIFT ;
 scalar_t__ DVMA_PAGE_SIZE ;
 int IOMMU_FULL_BLOCK ;
 int __pa (unsigned long) ;
 int dvma_entry_set (unsigned long,int ) ;
 int dvma_print (unsigned long) ;
 int * iommu_pte ;

inline int dvma_map_iommu(unsigned long kaddr, unsigned long baddr,
     int len)
{
 unsigned long end, index;

 index = baddr >> DVMA_PAGE_SHIFT;
 end = ((baddr+len) >> DVMA_PAGE_SHIFT);

 if(len & ~DVMA_PAGE_MASK)
  end++;

 for(; index < end ; index++) {





  dvma_entry_set(index, __pa(kaddr));

  iommu_pte[index] |= IOMMU_FULL_BLOCK;


  kaddr += DVMA_PAGE_SIZE;
 }





 return 0;

}
