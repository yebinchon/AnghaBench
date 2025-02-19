
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ata_scsi_args {TYPE_1__* cmd; int id; struct ata_device* dev; } ;
struct ata_device {int flags; scalar_t__ multi_count; } ;
typedef int sat_blk_desc ;
struct TYPE_3__ {int* cmnd; } ;



 int ALL_SUB_MPAGES ;
 int ATA_DFLAG_LBA48 ;
 int ATA_DFLAG_PIO ;


 int ILLEGAL_REQUEST ;
 int MODE_SENSE ;

 int VPRINTK (char*) ;
 scalar_t__ ata_dev_supports_fua (int ) ;
 int ata_msense_caching (int ,int*,int) ;
 int ata_msense_control (struct ata_device*,int*,int) ;
 int ata_msense_rw_recovery (int*,int) ;
 int ata_scsi_set_invalid_field (struct ata_device*,TYPE_1__*,int,int) ;
 int ata_scsi_set_sense (struct ata_device*,TYPE_1__*,int ,int,int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static unsigned int ata_scsiop_mode_sense(struct ata_scsi_args *args, u8 *rbuf)
{
 struct ata_device *dev = args->dev;
 u8 *scsicmd = args->cmd->cmnd, *p = rbuf;
 static const u8 sat_blk_desc[] = {
  0, 0, 0, 0,
  0,
  0, 0x2, 0x0
 };
 u8 pg, spg;
 unsigned int ebd, page_control, six_byte;
 u8 dpofua, bp = 0xff;
 u16 fp;

 VPRINTK("ENTER\n");

 six_byte = (scsicmd[0] == MODE_SENSE);
 ebd = !(scsicmd[1] & 0x8);




 page_control = scsicmd[2] >> 6;
 switch (page_control) {
 case 0:
 case 1:
 case 2:
  break;
 case 3:
  goto saving_not_supp;
 default:
  fp = 2;
  bp = 6;
  goto invalid_fld;
 }

 if (six_byte)
  p += 4 + (ebd ? 8 : 0);
 else
  p += 8 + (ebd ? 8 : 0);

 pg = scsicmd[2] & 0x3f;
 spg = scsicmd[3];




 if (spg && (spg != ALL_SUB_MPAGES)) {
  fp = 3;
  goto invalid_fld;
 }

 switch(pg) {
 case 128:
  p += ata_msense_rw_recovery(p, page_control == 1);
  break;

 case 130:
  p += ata_msense_caching(args->id, p, page_control == 1);
  break;

 case 129:
  p += ata_msense_control(args->dev, p, page_control == 1);
  break;

 case 131:
  p += ata_msense_rw_recovery(p, page_control == 1);
  p += ata_msense_caching(args->id, p, page_control == 1);
  p += ata_msense_control(args->dev, p, page_control == 1);
  break;

 default:
  fp = 2;
  goto invalid_fld;
 }

 dpofua = 0;
 if (ata_dev_supports_fua(args->id) && (dev->flags & ATA_DFLAG_LBA48) &&
     (!(dev->flags & ATA_DFLAG_PIO) || dev->multi_count))
  dpofua = 1 << 4;

 if (six_byte) {
  rbuf[0] = p - rbuf - 1;
  rbuf[2] |= dpofua;
  if (ebd) {
   rbuf[3] = sizeof(sat_blk_desc);
   memcpy(rbuf + 4, sat_blk_desc, sizeof(sat_blk_desc));
  }
 } else {
  unsigned int output_len = p - rbuf - 2;

  rbuf[0] = output_len >> 8;
  rbuf[1] = output_len;
  rbuf[3] |= dpofua;
  if (ebd) {
   rbuf[7] = sizeof(sat_blk_desc);
   memcpy(rbuf + 8, sat_blk_desc, sizeof(sat_blk_desc));
  }
 }
 return 0;

invalid_fld:
 ata_scsi_set_invalid_field(dev, args->cmd, fp, bp);
 return 1;

saving_not_supp:
 ata_scsi_set_sense(dev, args->cmd, ILLEGAL_REQUEST, 0x39, 0x0);

 return 1;
}
