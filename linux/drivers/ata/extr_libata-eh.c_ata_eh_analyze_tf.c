
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ata_taskfile {int command; int feature; } ;
struct TYPE_7__ {int feature; } ;
struct ata_queued_cmd {int err_mask; int flags; TYPE_3__* scsicmd; TYPE_2__ result_tf; TYPE_4__* dev; TYPE_1__* ap; } ;
struct TYPE_9__ {int class; } ;
struct TYPE_8__ {int sense_buffer; } ;
struct TYPE_6__ {int pflags; } ;


 int AC_ERR_ATA_BUS ;
 int AC_ERR_DEV ;
 int AC_ERR_HSM ;
 int AC_ERR_INVALID ;
 int AC_ERR_MEDIA ;
 unsigned int AC_ERR_OTHER ;
 int AC_ERR_TIMEOUT ;
 int ADD_TO_MLQUEUE ;
 int ATA_AMNF ;
 int ATA_BUSY ;



 int ATA_DF ;
 int ATA_DRDY ;
 int ATA_DRQ ;
 unsigned int ATA_EH_RESET ;
 int ATA_ERR ;
 int ATA_ICRC ;
 int ATA_IDNF ;
 int ATA_PFLAG_FROZEN ;
 int ATA_QCFLAG_RETRY ;
 int ATA_QCFLAG_SENSE_VALID ;
 int ATA_SENSE ;
 int ATA_UNC ;
 int NEEDS_RETRY ;
 int SUCCESS ;
 int ata_eh_request_sense (struct ata_queued_cmd*,TYPE_3__*) ;
 unsigned int atapi_eh_request_sense (TYPE_4__*,int ,int) ;
 int scsi_check_sense (TYPE_3__*) ;

__attribute__((used)) static unsigned int ata_eh_analyze_tf(struct ata_queued_cmd *qc,
          const struct ata_taskfile *tf)
{
 unsigned int tmp, action = 0;
 u8 stat = tf->command, err = tf->feature;

 if ((stat & (ATA_BUSY | ATA_DRQ | ATA_DRDY)) != ATA_DRDY) {
  qc->err_mask |= AC_ERR_HSM;
  return ATA_EH_RESET;
 }

 if (stat & (ATA_ERR | ATA_DF)) {
  qc->err_mask |= AC_ERR_DEV;




  if (stat & ATA_DF)
   stat &= ~ATA_SENSE;
 } else {
  return 0;
 }

 switch (qc->dev->class) {
 case 128:
  if (stat & ATA_SENSE)
   ata_eh_request_sense(qc, qc->scsicmd);

 case 130:
  if (err & ATA_ICRC)
   qc->err_mask |= AC_ERR_ATA_BUS;
  if (err & (ATA_UNC | ATA_AMNF))
   qc->err_mask |= AC_ERR_MEDIA;
  if (err & ATA_IDNF)
   qc->err_mask |= AC_ERR_INVALID;
  break;

 case 129:
  if (!(qc->ap->pflags & ATA_PFLAG_FROZEN)) {
   tmp = atapi_eh_request_sense(qc->dev,
      qc->scsicmd->sense_buffer,
      qc->result_tf.feature >> 4);
   if (!tmp)
    qc->flags |= ATA_QCFLAG_SENSE_VALID;
   else
    qc->err_mask |= tmp;
  }
 }

 if (qc->flags & ATA_QCFLAG_SENSE_VALID) {
  int ret = scsi_check_sense(qc->scsicmd);
  if (ret == NEEDS_RETRY || ret == ADD_TO_MLQUEUE) {
   qc->flags |= ATA_QCFLAG_RETRY;
   qc->err_mask |= AC_ERR_OTHER;
  } else if (ret != SUCCESS) {
   qc->err_mask |= AC_ERR_HSM;
  }
 }
 if (qc->err_mask & (AC_ERR_HSM | AC_ERR_TIMEOUT | AC_ERR_ATA_BUS))
  action |= ATA_EH_RESET;

 return action;
}
