
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {unsigned long start_dma; int iommu_pages; int iommu_bitmap; } ;
struct device {int dummy; } ;


 unsigned long ALIGN (scalar_t__,int ) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ dma_get_seg_boundary (struct device*) ;
 unsigned long iommu_area_alloc (int ,int ,unsigned long,int,unsigned long,unsigned long,int ) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static unsigned long __dma_alloc_iommu(struct device *dev,
           unsigned long start, int size)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));
 unsigned long boundary_size;

 boundary_size = ALIGN(dma_get_seg_boundary(dev) + 1,
         PAGE_SIZE) >> PAGE_SHIFT;
 return iommu_area_alloc(zdev->iommu_bitmap, zdev->iommu_pages,
    start, size, zdev->start_dma >> PAGE_SHIFT,
    boundary_size, 0);
}
