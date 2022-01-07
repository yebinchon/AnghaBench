
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int allocated_pages; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SIZE ;
 int atomic64_sub (size_t,int *) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int s390_dma_unmap_pages (struct device*,int ,size_t,int ,int ) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static void s390_dma_free(struct device *dev, size_t size,
     void *pa, dma_addr_t dma_handle,
     unsigned long attrs)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));

 size = PAGE_ALIGN(size);
 atomic64_sub(size / PAGE_SIZE, &zdev->allocated_pages);
 s390_dma_unmap_pages(dev, dma_handle, size, DMA_BIDIRECTIONAL, 0);
 free_pages((unsigned long) pa, get_order(size));
}
