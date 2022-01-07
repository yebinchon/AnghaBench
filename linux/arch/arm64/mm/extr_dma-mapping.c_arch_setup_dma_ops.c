
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_ops {int dummy; } ;
struct device {int dma_coherent; int * dma_ops; } ;


 int ARCH_DMA_MINALIGN ;
 int TAINT_CPU_OUT_OF_SPEC ;
 int WARN_TAINT (int,int ,char*,int ,int ,int,int) ;
 int cache_line_size_of_cpu () ;
 int dev_driver_string (struct device*) ;
 int dev_name (struct device*) ;
 int iommu_setup_dma_ops (struct device*,int ,int ) ;
 scalar_t__ xen_initial_domain () ;
 int xen_swiotlb_dma_ops ;

void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
   const struct iommu_ops *iommu, bool coherent)
{
 int cls = cache_line_size_of_cpu();

 WARN_TAINT(!coherent && cls > ARCH_DMA_MINALIGN,
     TAINT_CPU_OUT_OF_SPEC,
     "%s %s: ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
     dev_driver_string(dev), dev_name(dev),
     ARCH_DMA_MINALIGN, cls);

 dev->dma_coherent = coherent;
 if (iommu)
  iommu_setup_dma_ops(dev, dma_base, size);





}
