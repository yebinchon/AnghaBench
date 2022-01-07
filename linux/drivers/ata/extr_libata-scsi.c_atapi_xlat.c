
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__ sc_data_direction; int cmd_len; int cmnd; } ;
struct TYPE_2__ {int flags; unsigned int lbam; unsigned int lbah; int feature; int protocol; int command; } ;
struct ata_queued_cmd {TYPE_1__ tf; int complete_fn; int cdb; struct ata_device* dev; struct scsi_cmnd* scsicmd; } ;
struct ata_device {int flags; int cdb_len; } ;


 int ATAPI_DMADIR ;
 int ATAPI_PKT_DMA ;
 int ATAPI_PROT_DMA ;
 int ATAPI_PROT_NODATA ;
 int ATAPI_PROT_PIO ;
 int ATA_CMD_PACKET ;
 int ATA_DFLAG_DMADIR ;
 int ATA_DFLAG_PIO ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_WRITE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int DPRINTK (char*) ;
 int ata_qc_raw_nbytes (struct ata_queued_cmd*) ;
 int ata_qc_set_pc_nbytes (struct ata_queued_cmd*) ;
 scalar_t__ atapi_check_dma (struct ata_queued_cmd*) ;
 int atapi_qc_complete ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 unsigned int min (int ,unsigned int) ;

__attribute__((used)) static unsigned int atapi_xlat(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *scmd = qc->scsicmd;
 struct ata_device *dev = qc->dev;
 int nodata = (scmd->sc_data_direction == DMA_NONE);
 int using_pio = !nodata && (dev->flags & ATA_DFLAG_PIO);
 unsigned int nbytes;

 memset(qc->cdb, 0, dev->cdb_len);
 memcpy(qc->cdb, scmd->cmnd, scmd->cmd_len);

 qc->complete_fn = atapi_qc_complete;

 qc->tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
 if (scmd->sc_data_direction == DMA_TO_DEVICE) {
  qc->tf.flags |= ATA_TFLAG_WRITE;
  DPRINTK("direction: write\n");
 }

 qc->tf.command = ATA_CMD_PACKET;
 ata_qc_set_pc_nbytes(qc);


 if (!nodata && !using_pio && atapi_check_dma(qc))
  using_pio = 1;






 nbytes = min(ata_qc_raw_nbytes(qc), (unsigned int)63 * 1024);
 if (nbytes & 0x1)
  nbytes++;

 qc->tf.lbam = (nbytes & 0xFF);
 qc->tf.lbah = (nbytes >> 8);

 if (nodata)
  qc->tf.protocol = ATAPI_PROT_NODATA;
 else if (using_pio)
  qc->tf.protocol = ATAPI_PROT_PIO;
 else {

  qc->tf.protocol = ATAPI_PROT_DMA;
  qc->tf.feature |= ATAPI_PKT_DMA;

  if ((dev->flags & ATA_DFLAG_DMADIR) &&
      (scmd->sc_data_direction != DMA_TO_DEVICE))

   qc->tf.feature |= ATAPI_DMADIR;
 }




 return 0;
}
