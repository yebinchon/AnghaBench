
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pdc_port_priv {int* pkt; } ;
struct TYPE_4__ {int protocol; int flags; unsigned int device; int nsect; int lbal; int lbam; int lbah; int command; } ;
struct ata_queued_cmd {int* cdb; TYPE_2__ tf; TYPE_1__* dev; struct ata_port* ap; } ;
struct ata_port {int link; struct pdc_port_priv* private_data; int bmdma_prd_dma; } ;
typedef int dma_addr_t ;
typedef scalar_t__ __le32 ;
struct TYPE_3__ {unsigned int cdb_len; } ;




 int ATA_REG_BYTEH ;
 int ATA_REG_BYTEL ;
 int ATA_REG_CMD ;
 unsigned int ATA_REG_DATA ;
 int ATA_REG_DEVICE ;
 int ATA_REG_FEATURE ;
 int ATA_REG_LBAL ;
 int ATA_REG_NSECT ;
 int ATA_TFLAG_WRITE ;
 int BUG () ;
 int BUG_ON (unsigned int) ;
 unsigned int PDC_DEVICE_SATA ;
 unsigned int PDC_FEATURE_ATAPI_DMA ;
 unsigned int PDC_FEATURE_ATAPI_PIO ;
 unsigned int PDC_LAST_REG ;
 int PDC_PKT_CLEAR_BSY ;
 int PDC_PKT_NODATA ;
 int PDC_PKT_READ ;
 int PDC_PKT_WAIT_DRDY ;
 scalar_t__ cpu_to_le32 (int ) ;
 int memcpy (int*,int*,unsigned int) ;
 scalar_t__ sata_scr_valid (int *) ;

__attribute__((used)) static void pdc_atapi_pkt(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 dma_addr_t sg_table = ap->bmdma_prd_dma;
 unsigned int cdb_len = qc->dev->cdb_len;
 u8 *cdb = qc->cdb;
 struct pdc_port_priv *pp = ap->private_data;
 u8 *buf = pp->pkt;
 __le32 *buf32 = (__le32 *) buf;
 unsigned int dev_sel, feature;




 switch (qc->tf.protocol) {
 case 129:
  if (!(qc->tf.flags & ATA_TFLAG_WRITE))
   buf32[0] = cpu_to_le32(PDC_PKT_READ);
  else
   buf32[0] = 0;
  break;
 case 128:
  buf32[0] = cpu_to_le32(PDC_PKT_NODATA);
  break;
 default:
  BUG();
  break;
 }
 buf32[1] = cpu_to_le32(sg_table);
 buf32[2] = 0;


 if (sata_scr_valid(&ap->link))
  dev_sel = PDC_DEVICE_SATA;
 else
  dev_sel = qc->tf.device;

 buf[12] = (1 << 5) | ATA_REG_DEVICE;
 buf[13] = dev_sel;
 buf[14] = (1 << 5) | ATA_REG_DEVICE | PDC_PKT_CLEAR_BSY;
 buf[15] = dev_sel;

 buf[16] = (1 << 5) | ATA_REG_NSECT;
 buf[17] = qc->tf.nsect;
 buf[18] = (1 << 5) | ATA_REG_LBAL;
 buf[19] = qc->tf.lbal;


 if (qc->tf.protocol != 129)
  feature = PDC_FEATURE_ATAPI_PIO;
 else
  feature = PDC_FEATURE_ATAPI_DMA;

 buf[20] = (1 << 5) | ATA_REG_FEATURE;
 buf[21] = feature;
 buf[22] = (1 << 5) | ATA_REG_BYTEL;
 buf[23] = qc->tf.lbam;
 buf[24] = (1 << 5) | ATA_REG_BYTEH;
 buf[25] = qc->tf.lbah;


 buf[26] = (1 << 5) | ATA_REG_CMD;
 buf[27] = qc->tf.command;


 buf[28] = (1 << 5) | ATA_REG_DEVICE | PDC_PKT_WAIT_DRDY;
 buf[29] = dev_sel;


 BUG_ON(cdb_len & ~0x1E);


 buf[30] = (((cdb_len >> 1) & 7) << 5) | ATA_REG_DATA | PDC_LAST_REG;
 memcpy(buf+31, cdb, cdb_len);
}
