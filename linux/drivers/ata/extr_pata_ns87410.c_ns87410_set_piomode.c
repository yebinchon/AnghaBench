
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct ata_timing {size_t active; size_t setup; size_t recover; } ;
struct ata_port {int port_no; struct ata_device* private_data; TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 scalar_t__ ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 void* clamp_val (size_t,int,int) ;
 int dev_err (int *,char*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ns87410_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port = 0x40 + 4 * ap->port_no;
 u8 idetcr, idefr;
 struct ata_timing at;

 static const u8 activebits[15] = {
  0, 1, 2, 3, 4,
  5, 5, 6, 6, 6,
  6, 7, 7, 7, 7
 };

 static const u8 recoverbits[12] = {
  0, 1, 2, 3, 4, 5, 6, 6, 7, 7, 7, 7
 };

 pci_read_config_byte(pdev, port + 3, &idefr);

 if (ata_pio_need_iordy(adev))
  idefr |= 0x04;
 else
  idefr &= ~0x04;

 if (ata_timing_compute(adev, adev->pio_mode, &at, 30303, 1) < 0) {
  dev_err(&pdev->dev, "unknown mode %d\n", adev->pio_mode);
  return;
 }

 at.active = clamp_val(at.active, 2, 16) - 2;
 at.setup = clamp_val(at.setup, 1, 4) - 1;
 at.recover = clamp_val(at.recover, 1, 12) - 1;

 idetcr = (at.setup << 6) | (recoverbits[at.recover] << 3) | activebits[at.active];

 pci_write_config_byte(pdev, port, idetcr);
 pci_write_config_byte(pdev, port + 3, idefr);


 ap->private_data = adev;
}
