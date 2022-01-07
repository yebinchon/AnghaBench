
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;
 unsigned long dvma_btov (unsigned long) ;
 int dvma_page (unsigned long,unsigned long) ;

int dvma_map_iommu(unsigned long kaddr, unsigned long baddr,
         int len)
{

 unsigned long end;
 unsigned long vaddr;

 vaddr = dvma_btov(baddr);

 end = vaddr + len;

 while(vaddr < end) {
  dvma_page(kaddr, vaddr);
  kaddr += PAGE_SIZE;
  vaddr += PAGE_SIZE;
 }

 return 0;

}
