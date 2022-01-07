
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct scsi_cmnd {int* cmnd; int cmd_len; } ;
struct ata_taskfile {int hob_nsect; int nsect; int feature; int hob_feature; int auxiliary; int lbah; int lbam; int lbal; int hob_lbah; int hob_lbam; int hob_lbal; int flags; int device; int protocol; int command; } ;
struct ata_queued_cmd {int hw_tag; int dev; int complete_fn; int flags; struct scsi_cmnd* scsicmd; struct ata_taskfile tf; } ;


 int ATA_CMD_FPDMA_RECV ;
 int ATA_CMD_ZAC_MGMT_IN ;
 int ATA_LBA ;
 int ATA_PROT_DMA ;
 int ATA_PROT_NCQ ;
 int ATA_QCFLAG_RESULT_TF ;
 int ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN ;
 int ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int ILLEGAL_REQUEST ;
 int ZI_REPORT_ZONES ;
 int ata_dev_warn (int ,char*,int,...) ;
 scalar_t__ ata_fpdma_zac_mgmt_in_supported (int ) ;
 scalar_t__ ata_ncq_enabled (int ) ;
 int ata_qc_set_pc_nbytes (struct ata_queued_cmd*) ;
 int ata_scsi_report_zones_complete ;
 int ata_scsi_set_invalid_field (int ,struct scsi_cmnd*,int,int) ;
 int ata_scsi_set_sense (int ,struct scsi_cmnd*,int ,int,int) ;
 int scsi_16_lba_len (int const*,int*,int*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int ata_scsi_zbc_in_xlat(struct ata_queued_cmd *qc)
{
 struct ata_taskfile *tf = &qc->tf;
 struct scsi_cmnd *scmd = qc->scsicmd;
 const u8 *cdb = scmd->cmnd;
 u16 sect, fp = (u16)-1;
 u8 sa, options, bp = 0xff;
 u64 block;
 u32 n_block;

 if (unlikely(scmd->cmd_len < 16)) {
  ata_dev_warn(qc->dev, "invalid cdb length %d\n",
        scmd->cmd_len);
  fp = 15;
  goto invalid_fld;
 }
 scsi_16_lba_len(cdb, &block, &n_block);
 if (n_block != scsi_bufflen(scmd)) {
  ata_dev_warn(qc->dev, "non-matching transfer count (%d/%d)\n",
        n_block, scsi_bufflen(scmd));
  goto invalid_param_len;
 }
 sa = cdb[1] & 0x1f;
 if (sa != ZI_REPORT_ZONES) {
  ata_dev_warn(qc->dev, "invalid service action %d\n", sa);
  fp = 1;
  goto invalid_fld;
 }




 if ((n_block / 512) > 0xffff || n_block < 512 || (n_block % 512)) {
  ata_dev_warn(qc->dev, "invalid transfer count %d\n", n_block);
  goto invalid_param_len;
 }
 sect = n_block / 512;
 options = cdb[14] & 0xbf;

 if (ata_ncq_enabled(qc->dev) &&
     ata_fpdma_zac_mgmt_in_supported(qc->dev)) {
  tf->protocol = ATA_PROT_NCQ;
  tf->command = ATA_CMD_FPDMA_RECV;
  tf->hob_nsect = ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN & 0x1f;
  tf->nsect = qc->hw_tag << 3;
  tf->feature = sect & 0xff;
  tf->hob_feature = (sect >> 8) & 0xff;
  tf->auxiliary = ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES | (options << 8);
 } else {
  tf->command = ATA_CMD_ZAC_MGMT_IN;
  tf->feature = ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES;
  tf->protocol = ATA_PROT_DMA;
  tf->hob_feature = options;
  tf->hob_nsect = (sect >> 8) & 0xff;
  tf->nsect = sect & 0xff;
 }
 tf->device = ATA_LBA;
 tf->lbah = (block >> 16) & 0xff;
 tf->lbam = (block >> 8) & 0xff;
 tf->lbal = block & 0xff;
 tf->hob_lbah = (block >> 40) & 0xff;
 tf->hob_lbam = (block >> 32) & 0xff;
 tf->hob_lbal = (block >> 24) & 0xff;

 tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_LBA48;
 qc->flags |= ATA_QCFLAG_RESULT_TF;

 ata_qc_set_pc_nbytes(qc);

 qc->complete_fn = ata_scsi_report_zones_complete;

 return 0;

invalid_fld:
 ata_scsi_set_invalid_field(qc->dev, scmd, fp, bp);
 return 1;

invalid_param_len:

 ata_scsi_set_sense(qc->dev, scmd, ILLEGAL_REQUEST, 0x1a, 0x0);
 return 1;
}
