
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ata_scsi_args {struct scsi_cmnd* cmd; int id; struct ata_device* dev; } ;
struct ata_device {int flags; int id; } ;


 int ATA_DFLAG_ZAC ;
 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;


 int const MI_REPORT_SUPPORTED_OPERATION_CODES ;






 int const SAI_READ_CAPACITY_16 ;






 int ata_scsi_rbuf_fill (struct ata_scsi_args*,int ) ;
 int ata_scsi_set_invalid_field (struct ata_device*,struct scsi_cmnd*,int,int) ;
 int ata_scsi_set_sense (struct ata_device*,struct scsi_cmnd*,int ,int,int) ;
 int ata_scsiop_inq_00 ;
 int ata_scsiop_inq_80 ;
 int ata_scsiop_inq_83 ;
 int ata_scsiop_inq_89 ;
 int ata_scsiop_inq_b0 ;
 int ata_scsiop_inq_b1 ;
 int ata_scsiop_inq_b2 ;
 int ata_scsiop_inq_b6 ;
 int ata_scsiop_inq_std ;
 int ata_scsiop_maint_in ;
 int ata_scsiop_mode_sense ;
 int ata_scsiop_read_cap ;
 int ata_scsiop_report_luns ;
 int stub1 (struct scsi_cmnd*) ;

void ata_scsi_simulate(struct ata_device *dev, struct scsi_cmnd *cmd)
{
 struct ata_scsi_args args;
 const u8 *scsicmd = cmd->cmnd;
 u8 tmp8;

 args.dev = dev;
 args.id = dev->id;
 args.cmd = cmd;

 switch(scsicmd[0]) {
 case 141:
  if (scsicmd[1] & 2)
   ata_scsi_set_invalid_field(dev, cmd, 1, 0xff);
  else if ((scsicmd[1] & 1) == 0)
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_std);
  else switch (scsicmd[2]) {
  case 0x00:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_00);
   break;
  case 0x80:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_80);
   break;
  case 0x83:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_83);
   break;
  case 0x89:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_89);
   break;
  case 0xb0:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_b0);
   break;
  case 0xb1:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_b1);
   break;
  case 0xb2:
   ata_scsi_rbuf_fill(&args, ata_scsiop_inq_b2);
   break;
  case 0xb6:
   if (dev->flags & ATA_DFLAG_ZAC) {
    ata_scsi_rbuf_fill(&args, ata_scsiop_inq_b6);
    break;
   }

  default:
   ata_scsi_set_invalid_field(dev, cmd, 2, 0xff);
   break;
  }
  break;

 case 139:
 case 138:
  ata_scsi_rbuf_fill(&args, ata_scsiop_mode_sense);
  break;

 case 137:
  ata_scsi_rbuf_fill(&args, ata_scsiop_read_cap);
  break;

 case 130:
  if ((scsicmd[1] & 0x1f) == SAI_READ_CAPACITY_16)
   ata_scsi_rbuf_fill(&args, ata_scsiop_read_cap);
  else
   ata_scsi_set_invalid_field(dev, cmd, 1, 0xff);
  break;

 case 136:
  ata_scsi_rbuf_fill(&args, ata_scsiop_report_luns);
  break;

 case 135:
  ata_scsi_set_sense(dev, cmd, 0, 0, 0);
  cmd->result = (DRIVER_SENSE << 24);
  break;




 case 129:



 case 134:
 case 132:
 case 133:
 case 128:
  break;

 case 131:
  tmp8 = scsicmd[1] & ~(1 << 3);
  if (tmp8 != 0x4 || scsicmd[3] || scsicmd[4])
   ata_scsi_set_invalid_field(dev, cmd, 1, 0xff);
  break;

 case 140:
  if (scsicmd[1] == MI_REPORT_SUPPORTED_OPERATION_CODES)
   ata_scsi_rbuf_fill(&args, ata_scsiop_maint_in);
  else
   ata_scsi_set_invalid_field(dev, cmd, 1, 0xff);
  break;


 default:
  ata_scsi_set_sense(dev, cmd, ILLEGAL_REQUEST, 0x20, 0x0);

  break;
 }

 cmd->scsi_done(cmd);
}
