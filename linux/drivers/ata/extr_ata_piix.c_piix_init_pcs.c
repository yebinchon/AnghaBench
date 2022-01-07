
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct piix_map_db {int port_enable; } ;
struct pci_dev {int dummy; } ;
struct ata_host {int dev; } ;


 int DPRINTK (char*,int,int) ;
 int ICH5_PCS ;
 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void piix_init_pcs(struct ata_host *host,
     const struct piix_map_db *map_db)
{
 struct pci_dev *pdev = to_pci_dev(host->dev);
 u16 pcs, new_pcs;

 pci_read_config_word(pdev, ICH5_PCS, &pcs);

 new_pcs = pcs | map_db->port_enable;

 if (new_pcs != pcs) {
  DPRINTK("updating PCS from 0x%x to 0x%x\n", pcs, new_pcs);
  pci_write_config_word(pdev, ICH5_PCS, new_pcs);
  msleep(150);
 }
}
