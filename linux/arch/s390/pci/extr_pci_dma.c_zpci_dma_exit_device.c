
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {scalar_t__ next_bit; int * lazy_bitmap; int * iommu_bitmap; int * dma_table; int s390_domain; } ;


 int WARN_ON (int ) ;
 int dma_cleanup_tables (int *) ;
 int vfree (int *) ;
 scalar_t__ zpci_unregister_ioat (struct zpci_dev*,int ) ;

void zpci_dma_exit_device(struct zpci_dev *zdev)
{





 WARN_ON(zdev->s390_domain);

 if (zpci_unregister_ioat(zdev, 0))
  return;

 dma_cleanup_tables(zdev->dma_table);
 zdev->dma_table = ((void*)0);
 vfree(zdev->iommu_bitmap);
 zdev->iommu_bitmap = ((void*)0);
 vfree(zdev->lazy_bitmap);
 zdev->lazy_bitmap = ((void*)0);

 zdev->next_bit = 0;
}
