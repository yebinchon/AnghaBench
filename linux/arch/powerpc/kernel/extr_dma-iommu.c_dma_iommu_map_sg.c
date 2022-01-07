
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_direct_map_sg (struct device*,struct scatterlist*,int,int,unsigned long) ;
 int dma_get_mask (struct device*) ;
 scalar_t__ dma_iommu_map_bypass (struct device*,unsigned long) ;
 int get_iommu_table_base (struct device*) ;
 int ppc_iommu_map_sg (struct device*,int ,struct scatterlist*,int,int ,int,unsigned long) ;

__attribute__((used)) static int dma_iommu_map_sg(struct device *dev, struct scatterlist *sglist,
       int nelems, enum dma_data_direction direction,
       unsigned long attrs)
{
 if (dma_iommu_map_bypass(dev, attrs))
  return dma_direct_map_sg(dev, sglist, nelems, direction, attrs);
 return ppc_iommu_map_sg(dev, get_iommu_table_base(dev), sglist, nelems,
    dma_get_mask(dev), direction, attrs);
}
