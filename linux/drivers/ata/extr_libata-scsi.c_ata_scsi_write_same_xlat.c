
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct scsi_device {size_t sector_size; } ;
struct scsi_cmnd {int* cmnd; int cmd_len; int request; struct scsi_device* device; } ;
struct ata_taskfile {int hob_nsect; int nsect; int hob_feature; int feature; int auxiliary; int flags; int command; int protocol; } ;
struct ata_queued_cmd {int hw_tag; struct ata_device* dev; struct scsi_cmnd* scsicmd; struct ata_taskfile tf; } ;
struct ata_device {int horkage; int id; int dma_mode; } ;


 int ATA_CMD_DSM ;
 int ATA_CMD_FPDMA_SEND ;
 int ATA_DSM_TRIM ;
 int ATA_HORKAGE_NOTRIM ;
 int ATA_PROT_DMA ;
 int ATA_PROT_NCQ ;
 int ATA_SUBCMD_FPDMA_SEND_DSM ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int ATA_TFLAG_WRITE ;
 int ILLEGAL_REQUEST ;
 int ata_format_dsm_trim_descr (struct scsi_cmnd*,int const,int ,int) ;
 scalar_t__ ata_fpdma_dsm_supported (struct ata_device*) ;
 int ata_id_has_trim (int ) ;
 scalar_t__ ata_ncq_enabled (struct ata_device*) ;
 int ata_qc_set_pc_nbytes (struct ata_queued_cmd*) ;
 int ata_scsi_set_invalid_field (struct ata_device*,struct scsi_cmnd*,int,int) ;
 int ata_scsi_set_sense (struct ata_device*,struct scsi_cmnd*,int ,int,int) ;
 int blk_rq_is_passthrough (int ) ;
 int scsi_16_lba_len (int const*,int *,int*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int ata_scsi_write_same_xlat(struct ata_queued_cmd *qc)
{
 struct ata_taskfile *tf = &qc->tf;
 struct scsi_cmnd *scmd = qc->scsicmd;
 struct scsi_device *sdp = scmd->device;
 size_t len = sdp->sector_size;
 struct ata_device *dev = qc->dev;
 const u8 *cdb = scmd->cmnd;
 u64 block;
 u32 n_block;
 const u32 trmax = len >> 3;
 u32 size;
 u16 fp;
 u8 bp = 0xff;
 u8 unmap = cdb[1] & 0x8;


 if (unlikely(!dev->dma_mode))
  goto invalid_opcode;






 if (unlikely(blk_rq_is_passthrough(scmd->request)))
  goto invalid_opcode;

 if (unlikely(scmd->cmd_len < 16)) {
  fp = 15;
  goto invalid_fld;
 }
 scsi_16_lba_len(cdb, &block, &n_block);

 if (!unmap ||
     (dev->horkage & ATA_HORKAGE_NOTRIM) ||
     !ata_id_has_trim(dev->id)) {
  fp = 1;
  bp = 3;
  goto invalid_fld;
 }

 if (n_block > 0xffff * trmax) {
  fp = 2;
  goto invalid_fld;
 }





 if (!scsi_sg_count(scmd))
  goto invalid_param_len;







 size = ata_format_dsm_trim_descr(scmd, trmax, block, n_block);
 if (size != len)
  goto invalid_param_len;

 if (ata_ncq_enabled(dev) && ata_fpdma_dsm_supported(dev)) {

  tf->protocol = ATA_PROT_NCQ;
  tf->command = ATA_CMD_FPDMA_SEND;
  tf->hob_nsect = ATA_SUBCMD_FPDMA_SEND_DSM & 0x1f;
  tf->nsect = qc->hw_tag << 3;
  tf->hob_feature = (size / 512) >> 8;
  tf->feature = size / 512;

  tf->auxiliary = 1;
 } else {
  tf->protocol = ATA_PROT_DMA;
  tf->hob_feature = 0;
  tf->feature = ATA_DSM_TRIM;
  tf->hob_nsect = (size / 512) >> 8;
  tf->nsect = size / 512;
  tf->command = ATA_CMD_DSM;
 }

 tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_LBA48 |
       ATA_TFLAG_WRITE;

 ata_qc_set_pc_nbytes(qc);

 return 0;

invalid_fld:
 ata_scsi_set_invalid_field(dev, scmd, fp, bp);
 return 1;
invalid_param_len:

 ata_scsi_set_sense(dev, scmd, ILLEGAL_REQUEST, 0x1a, 0x0);
 return 1;
invalid_opcode:

 ata_scsi_set_sense(dev, scmd, ILLEGAL_REQUEST, 0x20, 0x0);
 return 1;
}
