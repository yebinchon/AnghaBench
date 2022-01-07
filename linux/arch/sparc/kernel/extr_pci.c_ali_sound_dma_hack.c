
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct pci_dev {int dummy; } ;
struct iommu {int dma_addr_mask; } ;
struct TYPE_3__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {scalar_t__ vendor; scalar_t__ device; } ;


 int PCI_DEVICE_ID_AL_M1533 ;
 scalar_t__ PCI_DEVICE_ID_AL_M5451 ;
 scalar_t__ PCI_VENDOR_ID_AL ;
 int dev_is_pci (struct device*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (scalar_t__,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 TYPE_2__* to_pci_dev (struct device*) ;

int ali_sound_dma_hack(struct device *dev, u64 device_mask)
{
 struct iommu *iommu = dev->archdata.iommu;
 struct pci_dev *ali_isa_bridge;
 u8 val;

 if (!dev_is_pci(dev))
  return 0;

 if (to_pci_dev(dev)->vendor != PCI_VENDOR_ID_AL ||
     to_pci_dev(dev)->device != PCI_DEVICE_ID_AL_M5451 ||
     device_mask != 0x7fffffff)
  return 0;

 ali_isa_bridge = pci_get_device(PCI_VENDOR_ID_AL,
      PCI_DEVICE_ID_AL_M1533,
      ((void*)0));

 pci_read_config_byte(ali_isa_bridge, 0x7e, &val);
 if (iommu->dma_addr_mask & 0x80000000)
  val |= 0x01;
 else
  val &= ~0x01;
 pci_write_config_byte(ali_isa_bridge, 0x7e, val);
 pci_dev_put(ali_isa_bridge);
 return 1;
}
