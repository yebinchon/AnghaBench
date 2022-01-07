
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct iounit_struct {int lock; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 unsigned long DMA_MAPPING_ERROR ;
 unsigned long iounit_get_area (struct iounit_struct*,unsigned long,size_t) ;
 void* page_address (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static dma_addr_t iounit_map_page(struct device *dev, struct page *page,
  unsigned long offset, size_t len, enum dma_data_direction dir,
  unsigned long attrs)
{
 void *vaddr = page_address(page) + offset;
 struct iounit_struct *iounit = dev->archdata.iommu;
 unsigned long ret, flags;


 if (!len || len > 256 * 1024)
  return DMA_MAPPING_ERROR;

 spin_lock_irqsave(&iounit->lock, flags);
 ret = iounit_get_area(iounit, (unsigned long)vaddr, len);
 spin_unlock_irqrestore(&iounit->lock, flags);
 return ret;
}
