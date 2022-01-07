
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; int device; int dev; } ;
struct ahci_host_priv {int force_port_map; int flags; int mask_port_map; } ;


 int AHCI_HFLAG_MV_PATA ;
 scalar_t__ PCI_VENDOR_ID_JMICRON ;
 int ahci_save_initial_config (int *,struct ahci_host_priv*) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static void ahci_pci_save_initial_config(struct pci_dev *pdev,
      struct ahci_host_priv *hpriv)
{
 if (pdev->vendor == PCI_VENDOR_ID_JMICRON && pdev->device == 0x2361) {
  dev_info(&pdev->dev, "JMB361 has only one port\n");
  hpriv->force_port_map = 1;
 }






 if (hpriv->flags & AHCI_HFLAG_MV_PATA) {
  if (pdev->device == 0x6121)
   hpriv->mask_port_map = 0x3;
  else
   hpriv->mask_port_map = 0xf;
  dev_info(&pdev->dev,
     "Disabling your PATA port. Use the boot option 'ahci.marvell_enable=0' to avoid this.\n");
 }

 ahci_save_initial_config(&pdev->dev, hpriv);
}
