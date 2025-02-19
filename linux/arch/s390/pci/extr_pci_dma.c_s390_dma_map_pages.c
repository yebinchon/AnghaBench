
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int mapped_pages; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ DMA_MAPPING_ERROR ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int ENOSPC ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int ZPCI_PTE_VALID ;
 int ZPCI_TABLE_PROTECTED ;
 int atomic64_add (unsigned long,int *) ;
 scalar_t__ dma_alloc_address (struct device*,unsigned long) ;
 int dma_free_address (struct device*,scalar_t__,unsigned long) ;
 int dma_update_trans (struct zpci_dev*,unsigned long,scalar_t__,size_t,int) ;
 unsigned long iommu_num_pages (unsigned long,size_t,unsigned long) ;
 unsigned long page_to_phys (struct page*) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;
 int zpci_err (char*) ;
 int zpci_err_dma (int,unsigned long) ;

__attribute__((used)) static dma_addr_t s390_dma_map_pages(struct device *dev, struct page *page,
         unsigned long offset, size_t size,
         enum dma_data_direction direction,
         unsigned long attrs)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));
 unsigned long pa = page_to_phys(page) + offset;
 int flags = ZPCI_PTE_VALID;
 unsigned long nr_pages;
 dma_addr_t dma_addr;
 int ret;


 nr_pages = iommu_num_pages(pa, size, PAGE_SIZE);
 dma_addr = dma_alloc_address(dev, nr_pages);
 if (dma_addr == DMA_MAPPING_ERROR) {
  ret = -ENOSPC;
  goto out_err;
 }


 size = nr_pages * PAGE_SIZE;

 if (direction == DMA_NONE || direction == DMA_TO_DEVICE)
  flags |= ZPCI_TABLE_PROTECTED;

 ret = dma_update_trans(zdev, pa, dma_addr, size, flags);
 if (ret)
  goto out_free;

 atomic64_add(nr_pages, &zdev->mapped_pages);
 return dma_addr + (offset & ~PAGE_MASK);

out_free:
 dma_free_address(dev, dma_addr, nr_pages);
out_err:
 zpci_err("map error:\n");
 zpci_err_dma(ret, pa);
 return DMA_MAPPING_ERROR;
}
