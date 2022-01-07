
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zpci_dev {int iommu_pages; int start_dma; scalar_t__ fh; } ;


 int PAGE_SIZE ;
 int zpci_refresh_trans (int,int ,int) ;

__attribute__((used)) static int zpci_refresh_global(struct zpci_dev *zdev)
{
 return zpci_refresh_trans((u64) zdev->fh << 32, zdev->start_dma,
      zdev->iommu_pages * PAGE_SIZE);
}
