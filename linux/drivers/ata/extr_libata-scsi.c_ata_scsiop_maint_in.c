
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_scsi_args {TYPE_1__* cmd; struct ata_device* dev; } ;
struct ata_device {int flags; int class; int id; } ;
struct TYPE_2__ {int* cmnd; } ;




 int ATA_DEV_ZAC ;
 int ATA_DFLAG_TRUSTED ;
 int ata_dev_warn (struct ata_device*,char*,int) ;
 int ata_id_zoned_cap (int ) ;

__attribute__((used)) static unsigned int ata_scsiop_maint_in(struct ata_scsi_args *args, u8 *rbuf)
{
 struct ata_device *dev = args->dev;
 u8 *cdb = args->cmd->cmnd;
 u8 supported = 0;
 unsigned int err = 0;

 if (cdb[2] != 1) {
  ata_dev_warn(dev, "invalid command format %d\n", cdb[2]);
  err = 2;
  goto out;
 }
 switch (cdb[3]) {
 case 156:
 case 152:
 case 151:
 case 147:
 case 138:
 case 146:
 case 145:
 case 136:
 case 144:
 case 140:
 case 141:
 case 135:
 case 139:
 case 155:
 case 148:
 case 150:
 case 149:
 case 130:
 case 132:
 case 131:
 case 158:
 case 157:
 case 134:
 case 133:
 case 154:
 case 153:
 case 137:
  supported = 3;
  break;
 case 129:
 case 128:
  if (ata_id_zoned_cap(dev->id) ||
      dev->class == ATA_DEV_ZAC)
   supported = 3;
  break;
 case 143:
 case 142:
  if (dev->flags & ATA_DFLAG_TRUSTED)
   supported = 3;
  break;
 default:
  break;
 }
out:
 rbuf[1] = supported;
 return err;
}
