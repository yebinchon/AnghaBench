
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int allocated_pages; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SIZE ;
 int __GFP_ZERO ;
 struct page* alloc_pages (int,int ) ;
 int atomic64_add (size_t,int *) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 unsigned long page_to_phys (struct page*) ;
 int s390_dma_map_pages (struct device*,struct page*,int ,size_t,int ,int ) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static void *s390_dma_alloc(struct device *dev, size_t size,
       dma_addr_t *dma_handle, gfp_t flag,
       unsigned long attrs)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));
 struct page *page;
 unsigned long pa;
 dma_addr_t map;

 size = PAGE_ALIGN(size);
 page = alloc_pages(flag | __GFP_ZERO, get_order(size));
 if (!page)
  return ((void*)0);

 pa = page_to_phys(page);
 map = s390_dma_map_pages(dev, page, 0, size, DMA_BIDIRECTIONAL, 0);
 if (dma_mapping_error(dev, map)) {
  free_pages(pa, get_order(size));
  return ((void*)0);
 }

 atomic64_add(size / PAGE_SIZE, &zdev->allocated_pages);
 if (dma_handle)
  *dma_handle = map;
 return (void *) pa;
}
