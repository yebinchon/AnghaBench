
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int ATA_SCSI_RBUF_SIZE ;
 int ata_scsi_rbuf ;
 int ata_scsi_rbuf_lock ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int sg_copy_from_buffer (int ,int ,int ,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ata_scsi_rbuf_put(struct scsi_cmnd *cmd, bool copy_out,
         unsigned long *flags)
{
 if (copy_out)
  sg_copy_from_buffer(scsi_sglist(cmd), scsi_sg_count(cmd),
        ata_scsi_rbuf, ATA_SCSI_RBUF_SIZE);
 spin_unlock_irqrestore(&ata_scsi_rbuf_lock, *flags);
}
