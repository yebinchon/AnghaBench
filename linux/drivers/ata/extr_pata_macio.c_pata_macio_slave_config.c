
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct scsi_device {size_t id; int request_queue; int host; } ;
struct pata_macio_priv {scalar_t__ kind; int pdev; } ;
struct TYPE_2__ {struct ata_device* device; } ;
struct ata_port {TYPE_1__ link; struct pata_macio_priv* private_data; } ;
struct ata_device {scalar_t__ class; } ;


 scalar_t__ ATA_DEV_ATAPI ;
 int BUG_ON (int) ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INVALIDATE ;
 int ata_dev_info (struct ata_device*,char*) ;
 int ata_scsi_slave_config (struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (int ) ;
 int blk_queue_update_dma_alignment (int ,int) ;
 int blk_queue_update_dma_pad (int ,int) ;
 scalar_t__ controller_k2_ata6 ;
 scalar_t__ controller_ohare ;
 scalar_t__ controller_sh_ata6 ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static int pata_macio_slave_config(struct scsi_device *sdev)
{
 struct ata_port *ap = ata_shost_to_port(sdev->host);
 struct pata_macio_priv *priv = ap->private_data;
 struct ata_device *dev;
 u16 cmd;
 int rc;


 rc = ata_scsi_slave_config(sdev);
 if (rc)
  return rc;


 dev = &ap->link.device[sdev->id];


 if (priv->kind == controller_ohare) {
  blk_queue_update_dma_alignment(sdev->request_queue, 31);
  blk_queue_update_dma_pad(sdev->request_queue, 31);


  ata_dev_info(dev, "OHare alignment limits applied\n");
  return 0;
 }


 if (dev->class != ATA_DEV_ATAPI)
  return 0;


 if (priv->kind == controller_sh_ata6 || priv->kind == controller_k2_ata6) {

  blk_queue_update_dma_alignment(sdev->request_queue, 15);
  blk_queue_update_dma_pad(sdev->request_queue, 15);






  BUG_ON(!priv->pdev);
  pci_write_config_byte(priv->pdev, PCI_CACHE_LINE_SIZE, 0x08);
  pci_read_config_word(priv->pdev, PCI_COMMAND, &cmd);
  pci_write_config_word(priv->pdev, PCI_COMMAND,
          cmd | PCI_COMMAND_INVALIDATE);


  ata_dev_info(dev, "K2/Shasta alignment limits applied\n");
 }

 return 0;
}
