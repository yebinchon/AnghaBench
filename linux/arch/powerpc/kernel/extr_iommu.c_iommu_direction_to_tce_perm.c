
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;





 unsigned long TCE_PCI_READ ;
 unsigned long TCE_PCI_WRITE ;

unsigned long iommu_direction_to_tce_perm(enum dma_data_direction dir)
{
 switch (dir) {
 case 130:
  return TCE_PCI_READ | TCE_PCI_WRITE;
 case 129:
  return TCE_PCI_WRITE;
 case 128:
  return TCE_PCI_READ;
 default:
  return 0;
 }
}
