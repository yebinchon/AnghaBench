
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_VENDOR_ID_INTEL ;
 int SKX_CAPID6 ;
 int SKX_CHA_BIT_MASK ;
 int hweight32 (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;

__attribute__((used)) static int skx_count_chabox(void)
{
 struct pci_dev *dev = ((void*)0);
 u32 val = 0;

 dev = pci_get_device(PCI_VENDOR_ID_INTEL, 0x2083, dev);
 if (!dev)
  goto out;

 pci_read_config_dword(dev, SKX_CAPID6, &val);
 val &= SKX_CHA_BIT_MASK;
out:
 pci_dev_put(dev);
 return hweight32(val);
}
