
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_ops {int dummy; } ;
struct device {int dummy; } ;
typedef enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;


 int DEV_DMA_COHERENT ;
 int DEV_DMA_NOT_SUPPORTED ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct iommu_ops const*) ;
 int PTR_ERR (struct iommu_ops const*) ;
 int arch_setup_dma_ops (struct device*,int ,int ,struct iommu_ops const*,int) ;
 int dma_dummy_ops ;
 int iort_dma_setup (struct device*,int *,int *) ;
 struct iommu_ops* iort_iommu_configure (struct device*) ;
 int set_dma_ops (struct device*,int *) ;

int acpi_dma_configure(struct device *dev, enum dev_dma_attr attr)
{
 const struct iommu_ops *iommu;
 u64 dma_addr = 0, size = 0;

 if (attr == DEV_DMA_NOT_SUPPORTED) {
  set_dma_ops(dev, &dma_dummy_ops);
  return 0;
 }

 iort_dma_setup(dev, &dma_addr, &size);

 iommu = iort_iommu_configure(dev);
 if (IS_ERR(iommu) && PTR_ERR(iommu) == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 arch_setup_dma_ops(dev, dma_addr, size,
    iommu, attr == DEV_DMA_COHERENT);

 return 0;
}
