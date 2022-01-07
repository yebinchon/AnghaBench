
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long owner; } ;


 unsigned long VDMA_PAGE_EMPTY ;
 int VDMA_PGTBL_ENTRIES ;
 TYPE_1__* pgtbl ;
 int printk (char*,int,...) ;
 int vdma_debug ;

int vdma_free(unsigned long laddr)
{
 int i;

 i = laddr >> 12;

 if (pgtbl[i].owner != laddr) {
  printk
      ("vdma_free: trying to free other's dma pages, laddr=%8lx\n",
       laddr);
  return -1;
 }

 while (i < VDMA_PGTBL_ENTRIES && pgtbl[i].owner == laddr) {
  pgtbl[i].owner = VDMA_PAGE_EMPTY;
  i++;
 }

 if (vdma_debug > 1)
  printk("vdma_free: freed %ld pages starting from %08lx\n",
         i - (laddr >> 12), laddr);

 return 0;
}
