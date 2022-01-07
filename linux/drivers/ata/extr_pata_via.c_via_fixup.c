
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct via_isa_bridge {int flags; scalar_t__ udma_mask; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ ATA_UDMA4 ;
 int VIA_BAD_CLK66 ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int via_config_fifo (struct pci_dev*,int) ;

__attribute__((used)) static void via_fixup(struct pci_dev *pdev, const struct via_isa_bridge *config)
{
 u32 timing;


 via_config_fifo(pdev, config->flags);

 if (config->udma_mask == ATA_UDMA4) {

  pci_read_config_dword(pdev, 0x50, &timing);
  timing |= 0x80008;
  pci_write_config_dword(pdev, 0x50, timing);
 }
 if (config->flags & VIA_BAD_CLK66) {

  pci_read_config_dword(pdev, 0x50, &timing);
  timing &= ~0x80008;
  pci_write_config_dword(pdev, 0x50, timing);
 }
}
