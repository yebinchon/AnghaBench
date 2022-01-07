
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_2__* host; } ;
struct ata_device {int devno; TYPE_1__* link; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct ata_port* ap; } ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sis_port_base(struct ata_device *adev)
{
 struct ata_port *ap = adev->link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port = 0x40;
 u32 reg54;


 pci_read_config_dword(pdev, 0x54, &reg54);
 if (reg54 & 0x40000000)
  port = 0x70;

 return port + (8 * ap->port_no) + (4 * adev->devno);
}
