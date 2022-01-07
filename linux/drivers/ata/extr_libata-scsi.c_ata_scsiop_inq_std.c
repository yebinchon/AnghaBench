
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int versions_zbc ;
typedef int versions ;
typedef int u8 ;
struct ata_scsi_args {TYPE_3__* dev; int id; } ;
typedef int hdr ;
struct TYPE_6__ {scalar_t__ class; TYPE_2__* link; } ;
struct TYPE_5__ {TYPE_1__* ap; } ;
struct TYPE_4__ {int pflags; } ;


 scalar_t__ ATA_DEV_ZAC ;
 scalar_t__ ATA_ID_FW_REV ;
 scalar_t__ ATA_ID_PROD ;
 int ATA_PFLAG_EXTERNAL ;
 int TYPE_DISK ;
 int TYPE_ZBC ;
 int VPRINTK (char*) ;
 scalar_t__ ata_id_removable (int ) ;
 int ata_id_string (int ,int*,scalar_t__,int) ;
 scalar_t__ ata_id_zoned_cap (int ) ;
 int memcpy (int*,...) ;
 scalar_t__ strncmp (int*,char*,int) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_std(struct ata_scsi_args *args, u8 *rbuf)
{
 static const u8 versions[] = {
  0x00,
  0x60,

  0x03,
  0x20,

  0x03,
  0x00
 };
 static const u8 versions_zbc[] = {
  0x00,
  0xA0,

  0x06,
  0x00,

  0x05,
  0xC0,

  0x60,
  0x24,
 };

 u8 hdr[] = {
  TYPE_DISK,
  0,
  0x5,
  2,
  95 - 4,
  0,
  0,
  2
 };

 VPRINTK("ENTER\n");




 if (ata_id_removable(args->id) ||
     (args->dev->link->ap->pflags & ATA_PFLAG_EXTERNAL))
  hdr[1] |= (1 << 7);

 if (args->dev->class == ATA_DEV_ZAC) {
  hdr[0] = TYPE_ZBC;
  hdr[2] = 0x7;
 }

 memcpy(rbuf, hdr, sizeof(hdr));
 memcpy(&rbuf[8], "ATA     ", 8);
 ata_id_string(args->id, &rbuf[16], ATA_ID_PROD, 16);


 ata_id_string(args->id, &rbuf[32], ATA_ID_FW_REV + 2, 4);
 if (strncmp(&rbuf[32], "    ", 4) == 0)
  ata_id_string(args->id, &rbuf[32], ATA_ID_FW_REV, 4);

 if (rbuf[32] == 0 || rbuf[32] == ' ')
  memcpy(&rbuf[32], "n/a ", 4);

 if (ata_id_zoned_cap(args->id) || args->dev->class == ATA_DEV_ZAC)
  memcpy(rbuf + 58, versions_zbc, sizeof(versions_zbc));
 else
  memcpy(rbuf + 58, versions, sizeof(versions));

 return 0;
}
