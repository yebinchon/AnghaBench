
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_direct_sync_sg_for_device (struct device*,struct scatterlist*,int,int) ;
 scalar_t__ dma_iommu_alloc_bypass (struct device*) ;

extern void dma_iommu_sync_sg_for_device(struct device *dev,
  struct scatterlist *sgl, int nents, enum dma_data_direction dir)
{
 if (dma_iommu_alloc_bypass(dev))
  dma_direct_sync_sg_for_device(dev, sgl, nents, dir);
}
