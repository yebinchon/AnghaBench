
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zpci_dev {int iommu_size; int iommu_pages; int * dma_table; int * lazy_bitmap; int * iommu_bitmap; scalar_t__ end_dma; scalar_t__ start_dma; int dma_table_lock; int iommu_bitmap_lock; int s390_domain; } ;


 int ENOMEM ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 int PAGE_SHIFT ;
 int WARN_ON (int ) ;
 scalar_t__ ZPCI_TABLE_SIZE_RT ;
 int * dma_alloc_cpu_table () ;
 int dma_free_cpu_table (int *) ;
 scalar_t__ high_memory ;
 int min3 (int ,scalar_t__,scalar_t__) ;
 int s390_iommu_strict ;
 int spin_lock_init (int *) ;
 int vfree (int *) ;
 void* vzalloc (int) ;
 int zpci_register_ioat (struct zpci_dev*,int ,scalar_t__,scalar_t__,int ) ;

int zpci_dma_init_device(struct zpci_dev *zdev)
{
 int rc;






 WARN_ON(zdev->s390_domain);

 spin_lock_init(&zdev->iommu_bitmap_lock);
 spin_lock_init(&zdev->dma_table_lock);

 zdev->dma_table = dma_alloc_cpu_table();
 if (!zdev->dma_table) {
  rc = -ENOMEM;
  goto out;
 }
 zdev->start_dma = PAGE_ALIGN(zdev->start_dma);
 zdev->iommu_size = min3((u64) high_memory,
    ZPCI_TABLE_SIZE_RT - zdev->start_dma,
    zdev->end_dma - zdev->start_dma + 1);
 zdev->end_dma = zdev->start_dma + zdev->iommu_size - 1;
 zdev->iommu_pages = zdev->iommu_size >> PAGE_SHIFT;
 zdev->iommu_bitmap = vzalloc(zdev->iommu_pages / 8);
 if (!zdev->iommu_bitmap) {
  rc = -ENOMEM;
  goto free_dma_table;
 }
 if (!s390_iommu_strict) {
  zdev->lazy_bitmap = vzalloc(zdev->iommu_pages / 8);
  if (!zdev->lazy_bitmap) {
   rc = -ENOMEM;
   goto free_bitmap;
  }

 }
 rc = zpci_register_ioat(zdev, 0, zdev->start_dma, zdev->end_dma,
    (u64) zdev->dma_table);
 if (rc)
  goto free_bitmap;

 return 0;
free_bitmap:
 vfree(zdev->iommu_bitmap);
 zdev->iommu_bitmap = ((void*)0);
 vfree(zdev->lazy_bitmap);
 zdev->lazy_bitmap = ((void*)0);
free_dma_table:
 dma_free_cpu_table(zdev->dma_table);
 zdev->dma_table = ((void*)0);
out:
 return rc;
}
