
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_data {int dummy; } ;
struct pci_dev {int devfn; } ;


 unsigned int INTEL_MRFLD_SD ;
 unsigned int PCI_FUNC (int ) ;
 struct sdhci_pci_data mrfld_sdhci_pci_data ;

__attribute__((used)) static struct sdhci_pci_data *
mrfld_sdhci_pci_get_data(struct pci_dev *pdev, int slotno)
{
 unsigned int func = PCI_FUNC(pdev->devfn);

 if (func == INTEL_MRFLD_SD)
  return &mrfld_sdhci_pci_data;

 return ((void*)0);
}
