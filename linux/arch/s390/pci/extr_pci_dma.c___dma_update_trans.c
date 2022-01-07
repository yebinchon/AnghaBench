
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zpci_dev {int dma_table_lock; int dma_table; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 unsigned int PAGE_ALIGN (size_t) ;
 unsigned long PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int ZPCI_PTE_INVALID ;
 int ZPCI_PTE_VALID ;
 int ZPCI_PTE_VALID_MASK ;
 int dma_update_cpu_trans (unsigned long*,int *,int) ;
 unsigned long* dma_walk_cpu_trans (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __dma_update_trans(struct zpci_dev *zdev, unsigned long pa,
         dma_addr_t dma_addr, size_t size, int flags)
{
 unsigned int nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
 u8 *page_addr = (u8 *) (pa & PAGE_MASK);
 unsigned long irq_flags;
 unsigned long *entry;
 int i, rc = 0;

 if (!nr_pages)
  return -EINVAL;

 spin_lock_irqsave(&zdev->dma_table_lock, irq_flags);
 if (!zdev->dma_table) {
  rc = -EINVAL;
  goto out_unlock;
 }

 for (i = 0; i < nr_pages; i++) {
  entry = dma_walk_cpu_trans(zdev->dma_table, dma_addr);
  if (!entry) {
   rc = -ENOMEM;
   goto undo_cpu_trans;
  }
  dma_update_cpu_trans(entry, page_addr, flags);
  page_addr += PAGE_SIZE;
  dma_addr += PAGE_SIZE;
 }

undo_cpu_trans:
 if (rc && ((flags & ZPCI_PTE_VALID_MASK) == ZPCI_PTE_VALID)) {
  flags = ZPCI_PTE_INVALID;
  while (i-- > 0) {
   page_addr -= PAGE_SIZE;
   dma_addr -= PAGE_SIZE;
   entry = dma_walk_cpu_trans(zdev->dma_table, dma_addr);
   if (!entry)
    break;
   dma_update_cpu_trans(entry, page_addr, flags);
  }
 }
out_unlock:
 spin_unlock_irqrestore(&zdev->dma_table_lock, irq_flags);
 return rc;
}
