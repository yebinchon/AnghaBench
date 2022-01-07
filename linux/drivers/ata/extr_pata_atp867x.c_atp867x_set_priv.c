
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct atp867x_priv {int pci66mhz; int eightb_piospd; int slave_piospd; int mstr_piospd; int dma_mode; } ;
struct ata_port {int port_no; struct atp867x_priv* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATP867X_IO_8BPIOSPD (struct ata_port*,int) ;
 int ATP867X_IO_DMAMODE (struct ata_port*,int) ;
 int ATP867X_IO_MSTRPIOSPD (struct ata_port*,int) ;
 int ATP867X_IO_SLAVPIOSPD (struct ata_port*,int) ;
 int ATP867X_IO_SYS_INFO_66MHZ ;
 int ATP867X_SYS_INFO (struct ata_port*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct atp867x_priv* devm_kzalloc (int *,int,int ) ;
 int ioread8 (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int atp867x_set_priv(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 struct atp867x_priv *dp;
 int port = ap->port_no;

 dp = ap->private_data =
  devm_kzalloc(&pdev->dev, sizeof(*dp), GFP_KERNEL);
 if (dp == ((void*)0))
  return -ENOMEM;

 dp->dma_mode = ATP867X_IO_DMAMODE(ap, port);
 dp->mstr_piospd = ATP867X_IO_MSTRPIOSPD(ap, port);
 dp->slave_piospd = ATP867X_IO_SLAVPIOSPD(ap, port);
 dp->eightb_piospd = ATP867X_IO_8BPIOSPD(ap, port);

 dp->pci66mhz =
  ioread8(ATP867X_SYS_INFO(ap)) & ATP867X_IO_SYS_INFO_66MHZ;

 return 0;
}
