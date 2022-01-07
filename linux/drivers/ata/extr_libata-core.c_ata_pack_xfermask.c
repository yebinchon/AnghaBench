
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ATA_MASK_MWDMA ;
 unsigned long ATA_MASK_PIO ;
 unsigned long ATA_MASK_UDMA ;
 unsigned long ATA_SHIFT_MWDMA ;
 unsigned long ATA_SHIFT_PIO ;
 unsigned long ATA_SHIFT_UDMA ;

unsigned long ata_pack_xfermask(unsigned long pio_mask,
    unsigned long mwdma_mask,
    unsigned long udma_mask)
{
 return ((pio_mask << ATA_SHIFT_PIO) & ATA_MASK_PIO) |
  ((mwdma_mask << ATA_SHIFT_MWDMA) & ATA_MASK_MWDMA) |
  ((udma_mask << ATA_SHIFT_UDMA) & ATA_MASK_UDMA);
}
