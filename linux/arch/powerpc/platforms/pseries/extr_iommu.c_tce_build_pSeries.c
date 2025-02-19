
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_table {scalar_t__ it_base; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int __be64 ;


 int DMA_TO_DEVICE ;
 scalar_t__ TCE_PAGE_SIZE ;
 int TCE_PCI_READ ;
 int TCE_PCI_WRITE ;
 int TCE_RPN_MASK ;
 int TCE_RPN_SHIFT ;
 int TCE_SHIFT ;
 int __pa (unsigned long) ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static int tce_build_pSeries(struct iommu_table *tbl, long index,
         long npages, unsigned long uaddr,
         enum dma_data_direction direction,
         unsigned long attrs)
{
 u64 proto_tce;
 __be64 *tcep;
 u64 rpn;

 proto_tce = TCE_PCI_READ;

 if (direction != DMA_TO_DEVICE)
  proto_tce |= TCE_PCI_WRITE;

 tcep = ((__be64 *)tbl->it_base) + index;

 while (npages--) {

  rpn = __pa(uaddr) >> TCE_SHIFT;
  *tcep = cpu_to_be64(proto_tce | (rpn & TCE_RPN_MASK) << TCE_RPN_SHIFT);

  uaddr += TCE_PAGE_SIZE;
  tcep++;
 }
 return 0;
}
