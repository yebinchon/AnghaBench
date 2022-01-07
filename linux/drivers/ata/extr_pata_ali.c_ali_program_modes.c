
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_timing {int setup; int act8b; int rec8b; int active; int recover; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; } ;


 int clamp_val (int,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ali_program_modes(struct ata_port *ap, struct ata_device *adev, struct ata_timing *t, u8 ultra)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int cas = 0x58 + 4 * ap->port_no;
 int cbt = 0x59 + 4 * ap->port_no;
 int drwt = 0x5A + 4 * ap->port_no + adev->devno;
 int udmat = 0x56 + ap->port_no;
 int shift = 4 * adev->devno;
 u8 udma;

 if (t != ((void*)0)) {
  t->setup = clamp_val(t->setup, 1, 8) & 7;
  t->act8b = clamp_val(t->act8b, 1, 8) & 7;
  t->rec8b = clamp_val(t->rec8b, 1, 16) & 15;
  t->active = clamp_val(t->active, 1, 8) & 7;
  t->recover = clamp_val(t->recover, 1, 16) & 15;

  pci_write_config_byte(pdev, cas, t->setup);
  pci_write_config_byte(pdev, cbt, (t->act8b << 4) | t->rec8b);
  pci_write_config_byte(pdev, drwt, (t->active << 4) | t->recover);
 }


 pci_read_config_byte(pdev, udmat, &udma);
 udma &= ~(0x0F << shift);
 udma |= ultra << shift;
 pci_write_config_byte(pdev, udmat, udma);
}
