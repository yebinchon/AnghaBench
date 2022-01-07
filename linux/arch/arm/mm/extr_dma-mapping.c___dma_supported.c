
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int arm_dma_pfn_limit ;
 int dev_warn (struct device*,char*,int ,int,int,unsigned long) ;
 int dma_to_pfn (struct device*,int ) ;
 int max_pfn ;
 unsigned long min (int ,int ) ;

__attribute__((used)) static int __dma_supported(struct device *dev, u64 mask, bool warn)
{
 unsigned long max_dma_pfn = min(max_pfn, arm_dma_pfn_limit);





 if (dma_to_pfn(dev, mask) < max_dma_pfn) {
  if (warn)
   dev_warn(dev, "Coherent DMA mask %#llx (pfn %#lx-%#lx) covers a smaller range of system memory than the DMA zone pfn 0x0-%#lx\n",
     mask,
     dma_to_pfn(dev, 0), dma_to_pfn(dev, mask) + 1,
     max_dma_pfn + 1);
  return 0;
 }

 return 1;
}
