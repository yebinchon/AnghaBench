
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int command; int feature; } ;


 int ATA_ABORTED ;
 int ATA_AMNF ;
 int ATA_BUSY ;
 int ATA_CORR ;
 int ATA_DF ;
 int ATA_DRDY ;
 int ATA_DRQ ;
 int ATA_DSC ;
 int ATA_ERR ;
 int ATA_ICRC ;
 int ATA_IDNF ;
 int ATA_SENSE ;
 int ATA_TRK0NF ;
 int ATA_UNC ;
 int pr_cont (char*) ;
 int pr_warn (char*,unsigned int,int) ;

__attribute__((used)) static void ata_dump_status(unsigned id, struct ata_taskfile *tf)
{
 u8 stat = tf->command, err = tf->feature;

 pr_warn("ata%u: status=0x%02x { ", id, stat);
 if (stat & ATA_BUSY) {
  pr_cont("Busy }\n");
 } else {
  if (stat & ATA_DRDY) pr_cont("DriveReady ");
  if (stat & ATA_DF) pr_cont("DeviceFault ");
  if (stat & ATA_DSC) pr_cont("SeekComplete ");
  if (stat & ATA_DRQ) pr_cont("DataRequest ");
  if (stat & ATA_CORR) pr_cont("CorrectedError ");
  if (stat & ATA_SENSE) pr_cont("Sense ");
  if (stat & ATA_ERR) pr_cont("Error ");
  pr_cont("}\n");

  if (err) {
   pr_warn("ata%u: error=0x%02x { ", id, err);
   if (err & ATA_ABORTED) pr_cont("DriveStatusError ");
   if (err & ATA_ICRC) {
    if (err & ATA_ABORTED)
      pr_cont("BadCRC ");
    else pr_cont("Sector ");
   }
   if (err & ATA_UNC) pr_cont("UncorrectableError ");
   if (err & ATA_IDNF) pr_cont("SectorIdNotFound ");
   if (err & ATA_TRK0NF) pr_cont("TrackZeroNotFound ");
   if (err & ATA_AMNF) pr_cont("AddrMarkNotFound ");
   pr_cont("}\n");
  }
 }
}
