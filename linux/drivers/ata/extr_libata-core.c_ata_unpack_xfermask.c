
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

void ata_unpack_xfermask(unsigned long xfer_mask, unsigned long *pio_mask,
    unsigned long *mwdma_mask, unsigned long *udma_mask)
{
 if (pio_mask)
  *pio_mask = (xfer_mask & ATA_MASK_PIO) >> ATA_SHIFT_PIO;
 if (mwdma_mask)
  *mwdma_mask = (xfer_mask & ATA_MASK_MWDMA) >> ATA_SHIFT_MWDMA;
 if (udma_mask)
  *udma_mask = (xfer_mask & ATA_MASK_UDMA) >> ATA_SHIFT_UDMA;
}
