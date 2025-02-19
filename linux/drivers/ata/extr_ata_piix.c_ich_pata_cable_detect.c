
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct piix_host_priv {int saved_iocfg; } ;
struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
struct ich_laptop {scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {struct piix_host_priv* private_data; int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 int PIIX_80C_PRI ;
 int PIIX_80C_SEC ;
 struct ich_laptop* ich_laptop ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int ich_pata_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 struct piix_host_priv *hpriv = ap->host->private_data;
 const struct ich_laptop *lap = &ich_laptop[0];
 u8 mask;


 while (lap->device) {
  if (lap->device == pdev->device &&
      lap->subvendor == pdev->subsystem_vendor &&
      lap->subdevice == pdev->subsystem_device)
   return ATA_CBL_PATA40_SHORT;

  lap++;
 }


 mask = ap->port_no == 0 ? PIIX_80C_PRI : PIIX_80C_SEC;
 if ((hpriv->saved_iocfg & mask) == 0)
  return ATA_CBL_PATA40;
 return ATA_CBL_PATA80;
}
