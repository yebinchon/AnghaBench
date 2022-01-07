
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int ATA_CMD_TRUSTED_NONDATA ;
 int ATA_CMD_TRUSTED_RCV ;
 int ATA_CMD_TRUSTED_RCV_DMA ;
 int ATA_CMD_TRUSTED_SND ;
 int ATA_CMD_TRUSTED_SND_DMA ;

__attribute__((used)) static u8 ata_scsi_trusted_op(u32 len, bool send, bool dma)
{
 if (len == 0)
  return ATA_CMD_TRUSTED_NONDATA;
 else if (send)
  return dma ? ATA_CMD_TRUSTED_SND_DMA : ATA_CMD_TRUSTED_SND;
 else
  return dma ? ATA_CMD_TRUSTED_RCV_DMA : ATA_CMD_TRUSTED_RCV;
}
