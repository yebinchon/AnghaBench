
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int __sbus_iommu_map_sg (struct device*,struct scatterlist*,int,int,unsigned long,int) ;

__attribute__((used)) static int sbus_iommu_map_sg_pflush(struct device *dev, struct scatterlist *sgl,
  int nents, enum dma_data_direction dir, unsigned long attrs)
{
 return __sbus_iommu_map_sg(dev, sgl, nents, dir, attrs, 1);
}
