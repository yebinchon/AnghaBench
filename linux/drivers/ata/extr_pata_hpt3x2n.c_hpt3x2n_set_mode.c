
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_MW_DMA_0 ;
 int XFER_UDMA_0 ;
 int hpt3x2n_find_mode (struct ata_port*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt3x2n_set_mode(struct ata_port *ap, struct ata_device *adev,
        u8 mode)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 addr1, addr2;
 u32 reg, timing, mask;
 u8 fast;

 addr1 = 0x40 + 4 * (adev->devno + 2 * ap->port_no);
 addr2 = 0x51 + 4 * ap->port_no;


 pci_read_config_byte(pdev, addr2, &fast);
 fast &= ~0x07;
 pci_write_config_byte(pdev, addr2, fast);


 if (mode < XFER_MW_DMA_0)
  mask = 0xcfc3ffff;
 else if (mode < XFER_UDMA_0)
  mask = 0x31c001ff;
 else
  mask = 0x303c0000;

 timing = hpt3x2n_find_mode(ap, mode);

 pci_read_config_dword(pdev, addr1, &reg);
 reg = (reg & ~mask) | (timing & mask);
 pci_write_config_dword(pdev, addr1, reg);
}
