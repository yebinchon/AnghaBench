
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int hpt36x_find_mode (struct ata_port*,scalar_t__) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt366_set_mode(struct ata_port *ap, struct ata_device *adev,
       u8 mode)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 addr = 0x40 + 4 * adev->devno;
 u32 mask, reg, t;


 if (mode < XFER_MW_DMA_0)
  mask = 0xc1f8ffff;
 else if (mode < XFER_UDMA_0)
  mask = 0x303800ff;
 else
  mask = 0x30070000;

 t = hpt36x_find_mode(ap, mode);






 pci_read_config_dword(pdev, addr, &reg);
 reg = ((reg & ~mask) | (t & mask)) & ~0xc0000000;
 pci_write_config_dword(pdev, addr, reg);
}
