
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_DMA_BIDIRECTIONAL ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;

__attribute__((used)) static int xilly_pci_direction(int direction)
{
 switch (direction) {
 case 128:
  return PCI_DMA_TODEVICE;
 case 129:
  return PCI_DMA_FROMDEVICE;
 default:
  return PCI_DMA_BIDIRECTIONAL;
 }
}
