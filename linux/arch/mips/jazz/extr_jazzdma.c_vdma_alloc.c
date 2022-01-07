
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long owner; int frame; } ;


 unsigned long DMA_MAPPING_ERROR ;
 int JAZZ_R4030_TRSTBL_INV ;
 int VDMA_PAGE (unsigned long) ;
 int VDMA_PAGESIZE ;
 unsigned long VDMA_PAGE_EMPTY ;
 int VDMA_PGTBL_ENTRIES ;
 TYPE_1__* pgtbl ;
 int printk (char*,...) ;
 int r4030_write_reg32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vdma_debug ;
 int vdma_lock ;

unsigned long vdma_alloc(unsigned long paddr, unsigned long size)
{
 int first, last, pages, frame, i;
 unsigned long laddr, flags;



 if (paddr > 0x1fffffff) {
  if (vdma_debug)
   printk("vdma_alloc: Invalid physical address: %08lx\n",
          paddr);
  return DMA_MAPPING_ERROR;
 }
 if (size > 0x400000 || size == 0) {
  if (vdma_debug)
   printk("vdma_alloc: Invalid size: %08lx\n", size);
  return DMA_MAPPING_ERROR;
 }

 spin_lock_irqsave(&vdma_lock, flags);



 pages = VDMA_PAGE(paddr + size) - VDMA_PAGE(paddr) + 1;
 first = 0;
 while (1) {
  while (pgtbl[first].owner != VDMA_PAGE_EMPTY &&
         first < VDMA_PGTBL_ENTRIES) first++;
  if (first + pages > VDMA_PGTBL_ENTRIES) {
   spin_unlock_irqrestore(&vdma_lock, flags);
   return DMA_MAPPING_ERROR;
  }

  last = first + 1;
  while (pgtbl[last].owner == VDMA_PAGE_EMPTY
         && last - first < pages)
   last++;

  if (last - first == pages)
   break;
  first = last + 1;
 }




 laddr = (first << 12) + (paddr & (VDMA_PAGESIZE - 1));
 frame = paddr & ~(VDMA_PAGESIZE - 1);

 for (i = first; i < last; i++) {
  pgtbl[i].frame = frame;
  pgtbl[i].owner = laddr;
  frame += VDMA_PAGESIZE;
 }




 r4030_write_reg32(JAZZ_R4030_TRSTBL_INV, 0);

 if (vdma_debug > 1)
  printk("vdma_alloc: Allocated %d pages starting from %08lx\n",
       pages, laddr);

 if (vdma_debug > 2) {
  printk("LADDR: ");
  for (i = first; i < last; i++)
   printk("%08x ", i << 12);
  printk("\nPADDR: ");
  for (i = first; i < last; i++)
   printk("%08x ", pgtbl[i].frame);
  printk("\nOWNER: ");
  for (i = first; i < last; i++)
   printk("%08x ", pgtbl[i].owner);
  printk("\n");
 }

 spin_unlock_irqrestore(&vdma_lock, flags);

 return laddr;
}
