
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_2__* host; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct ata_port* ap; } ;


 int ATA_SHIFT_UDMA ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int sis_port_base (struct ata_device*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static unsigned long sis_133_mode_filter(struct ata_device *adev, unsigned long mask)
{
 struct ata_port *ap = adev->link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port = sis_port_base(adev);
 u32 t1;

 pci_read_config_dword(pdev, port, &t1);

 if (!(t1 & 0x08))
  mask &= ~(0xC0 << ATA_SHIFT_UDMA);
 return mask;
}
