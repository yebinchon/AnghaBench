
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int ATA_SCSI_RBUF_SIZE ;
 void* ata_scsi_rbuf ;
 int ata_scsi_rbuf_lock ;
 int memset (void*,int ,int ) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int sg_copy_to_buffer (int ,int ,void*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static void *ata_scsi_rbuf_get(struct scsi_cmnd *cmd, bool copy_in,
          unsigned long *flags)
{
 spin_lock_irqsave(&ata_scsi_rbuf_lock, *flags);

 memset(ata_scsi_rbuf, 0, ATA_SCSI_RBUF_SIZE);
 if (copy_in)
  sg_copy_to_buffer(scsi_sglist(cmd), scsi_sg_count(cmd),
      ata_scsi_rbuf, ATA_SCSI_RBUF_SIZE);
 return ata_scsi_rbuf;
}
