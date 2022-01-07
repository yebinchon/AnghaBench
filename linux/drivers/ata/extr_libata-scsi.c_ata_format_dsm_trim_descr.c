
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct scsi_device {size_t sector_size; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
typedef int __le64 ;


 size_t ATA_SCSI_RBUF_SIZE ;
 int WARN_ON (int) ;
 int __cpu_to_le64 (int) ;
 scalar_t__ ata_scsi_rbuf ;
 int ata_scsi_rbuf_lock ;
 int memset (int *,int ,size_t) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 size_t sg_copy_from_buffer (int ,int ,int *,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static size_t ata_format_dsm_trim_descr(struct scsi_cmnd *cmd, u32 trmax,
     u64 sector, u32 count)
{
 struct scsi_device *sdp = cmd->device;
 size_t len = sdp->sector_size;
 size_t r;
 __le64 *buf;
 u32 i = 0;
 unsigned long flags;

 WARN_ON(len > ATA_SCSI_RBUF_SIZE);

 if (len > ATA_SCSI_RBUF_SIZE)
  len = ATA_SCSI_RBUF_SIZE;

 spin_lock_irqsave(&ata_scsi_rbuf_lock, flags);
 buf = ((void *)ata_scsi_rbuf);
 memset(buf, 0, len);
 while (i < trmax) {
  u64 entry = sector |
   ((u64)(count > 0xffff ? 0xffff : count) << 48);
  buf[i++] = __cpu_to_le64(entry);
  if (count <= 0xffff)
   break;
  count -= 0xffff;
  sector += 0xffff;
 }
 r = sg_copy_from_buffer(scsi_sglist(cmd), scsi_sg_count(cmd), buf, len);
 spin_unlock_irqrestore(&ata_scsi_rbuf_lock, flags);

 return r;
}
