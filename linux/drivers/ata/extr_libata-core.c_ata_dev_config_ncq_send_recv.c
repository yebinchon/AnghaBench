
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_port {int sector_buf; } ;
struct ata_device {int horkage; int flags; int * ncq_send_recv_cmds; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_DFLAG_NCQ_SEND_RECV ;
 int ATA_HORKAGE_NO_NCQ_TRIM ;
 int ATA_LOG_NCQ_SEND_RECV ;
 size_t ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET ;
 int ATA_LOG_NCQ_SEND_RECV_DSM_TRIM ;
 int ATA_LOG_NCQ_SEND_RECV_SIZE ;
 int ata_dev_dbg (struct ata_device*,char*,...) ;
 int ata_dev_warn (struct ata_device*,char*) ;
 int ata_log_supported (struct ata_device*,int ) ;
 unsigned int ata_read_log_page (struct ata_device*,int ,int ,int ,int) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void ata_dev_config_ncq_send_recv(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 unsigned int err_mask;

 if (!ata_log_supported(dev, ATA_LOG_NCQ_SEND_RECV)) {
  ata_dev_warn(dev, "NCQ Send/Recv Log not supported\n");
  return;
 }
 err_mask = ata_read_log_page(dev, ATA_LOG_NCQ_SEND_RECV,
         0, ap->sector_buf, 1);
 if (err_mask) {
  ata_dev_dbg(dev,
       "failed to get NCQ Send/Recv Log Emask 0x%x\n",
       err_mask);
 } else {
  u8 *cmds = dev->ncq_send_recv_cmds;

  dev->flags |= ATA_DFLAG_NCQ_SEND_RECV;
  memcpy(cmds, ap->sector_buf, ATA_LOG_NCQ_SEND_RECV_SIZE);

  if (dev->horkage & ATA_HORKAGE_NO_NCQ_TRIM) {
   ata_dev_dbg(dev, "disabling queued TRIM support\n");
   cmds[ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET] &=
    ~ATA_LOG_NCQ_SEND_RECV_DSM_TRIM;
  }
 }
}
