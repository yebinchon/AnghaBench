
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int pio_mode; int devno; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_PIO_0 ;
 int pci_read_config_dword (struct pci_dev*,unsigned int,int*) ;
 int pci_write_config_dword (struct pci_dev*,unsigned int,int const) ;
 scalar_t__ sc1200_clock () ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sc1200_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 static const u32 pio_timings[4][5] = {

  { 0x00009172, 0x00012171, 0x00020080, 0x00032010, 0x00040010 },

  { 0xd1329172, 0x71212171, 0x30200080, 0x20102010, 0x00100010 },

  { 0xfaa3f4f3, 0xc23232b2, 0x513101c1, 0x31213121, 0x10211021 },

  { 0xfff4fff4, 0xf35353d3, 0x814102f1, 0x42314231, 0x11311131 }
 };

 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 format;
 unsigned int reg = 0x40 + 0x10 * ap->port_no;
 int mode = adev->pio_mode - XFER_PIO_0;

 pci_read_config_dword(pdev, reg + 4, &format);
 format >>= 31;
 format += sc1200_clock();
 pci_write_config_dword(pdev, reg + 8 * adev->devno,
    pio_timings[format][mode]);
}
