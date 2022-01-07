
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int unmapped_pages; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int ZPCI_PTE_INVALID ;
 int atomic64_add (int,int *) ;
 int dma_free_address (struct device*,int,int) ;
 int dma_update_trans (struct zpci_dev*,int ,int,int,int ) ;
 int iommu_num_pages (int,size_t,int) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;
 int zpci_err (char*) ;
 int zpci_err_dma (int,int) ;

__attribute__((used)) static void s390_dma_unmap_pages(struct device *dev, dma_addr_t dma_addr,
     size_t size, enum dma_data_direction direction,
     unsigned long attrs)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));
 int npages, ret;

 npages = iommu_num_pages(dma_addr, size, PAGE_SIZE);
 dma_addr = dma_addr & PAGE_MASK;
 ret = dma_update_trans(zdev, 0, dma_addr, npages * PAGE_SIZE,
          ZPCI_PTE_INVALID);
 if (ret) {
  zpci_err("unmap error:\n");
  zpci_err_dma(ret, dma_addr);
  return;
 }

 atomic64_add(npages, &zdev->unmapped_pages);
 dma_free_address(dev, dma_addr, npages);
}
