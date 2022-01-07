
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 size_t ATA_ID_CFA_MODES ;
 size_t ATA_ID_FIELD_VALID ;
 size_t ATA_ID_MWDMA_MODES ;
 size_t ATA_ID_OLD_PIO_MODES ;
 size_t ATA_ID_PIO_MODES ;
 size_t ATA_ID_UDMA_MODES ;
 scalar_t__ ata_id_is_cfa (int const*) ;
 unsigned long ata_pack_xfermask (unsigned long,unsigned long,unsigned long) ;

unsigned long ata_id_xfermask(const u16 *id)
{
 unsigned long pio_mask, mwdma_mask, udma_mask;


 if (id[ATA_ID_FIELD_VALID] & (1 << 1)) {
  pio_mask = id[ATA_ID_PIO_MODES] & 0x03;
  pio_mask <<= 3;
  pio_mask |= 0x7;
 } else {




  u8 mode = (id[ATA_ID_OLD_PIO_MODES] >> 8) & 0xFF;
  if (mode < 5)
   pio_mask = (2 << mode) - 1;
  else
   pio_mask = 1;







 }

 mwdma_mask = id[ATA_ID_MWDMA_MODES] & 0x07;

 if (ata_id_is_cfa(id)) {



  int pio = (id[ATA_ID_CFA_MODES] >> 0) & 0x7;
  int dma = (id[ATA_ID_CFA_MODES] >> 3) & 0x7;

  if (pio)
   pio_mask |= (1 << 5);
  if (pio > 1)
   pio_mask |= (1 << 6);
  if (dma)
   mwdma_mask |= (1 << 3);
  if (dma > 1)
   mwdma_mask |= (1 << 4);
 }

 udma_mask = 0;
 if (id[ATA_ID_FIELD_VALID] & (1 << 2))
  udma_mask = id[ATA_ID_UDMA_MODES] & 0xff;

 return ata_pack_xfermask(pio_mask, mwdma_mask, udma_mask);
}
