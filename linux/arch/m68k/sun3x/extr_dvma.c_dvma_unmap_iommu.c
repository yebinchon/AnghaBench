
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DVMA_PAGE_ALIGN (unsigned long) ;
 unsigned long DVMA_PAGE_SHIFT ;
 int dvma_entry_clr (int) ;
 int dvma_entry_dec (int) ;
 int dvma_entry_use (int) ;
 int pr_debug (char*,int) ;
 int pr_info (char*,int) ;

void dvma_unmap_iommu(unsigned long baddr, int len)
{

 int index, end;


 index = baddr >> DVMA_PAGE_SHIFT;
 end = (DVMA_PAGE_ALIGN(baddr+len) >> DVMA_PAGE_SHIFT);

 for(; index < end ; index++) {
  pr_debug("freeing bus mapping %08x\n",
    index << DVMA_PAGE_SHIFT);







  dvma_entry_clr(index);
 }

}
