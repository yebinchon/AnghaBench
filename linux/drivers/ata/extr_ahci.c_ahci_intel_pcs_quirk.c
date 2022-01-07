
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_device_id {scalar_t__ vendor; scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct ahci_host_priv {int port_map; } ;
typedef enum board_ids { ____Placeholder_board_ids } board_ids ;


 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int PCS_6 ;
 int ahci_pci_tbl ;
 int board_ahci_pcs7 ;
 struct pci_device_id* pci_match_id (int ,struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void ahci_intel_pcs_quirk(struct pci_dev *pdev, struct ahci_host_priv *hpriv)
{
 const struct pci_device_id *id = pci_match_id(ahci_pci_tbl, pdev);
 u16 tmp16;




 if (!id || id->vendor != PCI_VENDOR_ID_INTEL)
  return;


 if (((enum board_ids) id->driver_data) >= board_ahci_pcs7)
  return;
 pci_read_config_word(pdev, PCS_6, &tmp16);
 if ((tmp16 & hpriv->port_map) != hpriv->port_map) {
  tmp16 |= hpriv->port_map;
  pci_write_config_word(pdev, PCS_6, tmp16);
 }
}
