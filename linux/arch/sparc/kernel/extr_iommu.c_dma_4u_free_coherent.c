
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu {int tbl; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef int dma_addr_t ;


 int IOMMU_ERROR_CODE ;
 unsigned long IO_PAGE_ALIGN (size_t) ;
 unsigned long IO_PAGE_SHIFT ;
 int free_pages (unsigned long,unsigned long) ;
 unsigned long get_order (size_t) ;
 int iommu_tbl_range_free (int *,int ,unsigned long,int ) ;

__attribute__((used)) static void dma_4u_free_coherent(struct device *dev, size_t size,
     void *cpu, dma_addr_t dvma,
     unsigned long attrs)
{
 struct iommu *iommu;
 unsigned long order, npages;

 npages = IO_PAGE_ALIGN(size) >> IO_PAGE_SHIFT;
 iommu = dev->archdata.iommu;

 iommu_tbl_range_free(&iommu->tbl, dvma, npages, IOMMU_ERROR_CODE);

 order = get_order(size);
 if (order < 10)
  free_pages((unsigned long)cpu, order);
}
