
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sata_oxnas_port_priv {scalar_t__ sgdma_base; TYPE_2__* sgdma_request; int sgdma_request_pa; } ;
struct TYPE_5__ {int protocol; } ;
struct ata_queued_cmd {scalar_t__ dma_dir; TYPE_3__* ap; TYPE_1__ tf; int err_mask; } ;
struct TYPE_7__ {int port_no; int bmdma_prd_dma; struct sata_oxnas_port_priv* private_data; int host; } ;
struct TYPE_6__ {int dst_pa; int src_pa; int qualifier; int control; } ;


 int AC_ERR_ATA_BUS ;
 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ SGDMA_CONTROL ;
 int SGDMA_CONTROL_NOGO ;
 int SGDMA_REQCTL0IN ;
 int SGDMA_REQCTL0OUT ;
 int SGDMA_REQCTL1IN ;
 int SGDMA_REQCTL1OUT ;
 int SGDMA_REQQUAL ;
 scalar_t__ SGDMA_REQUESTPTR ;
 int ata_bmdma_qc_prep (struct ata_queued_cmd*) ;
 scalar_t__ ata_is_dma (int ) ;
 scalar_t__ ata_is_pio (int ) ;
 int ata_port_err (TYPE_3__*,char*,int) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 int iowrite32 (int ,scalar_t__) ;
 int sata_oxnas_check_link (TYPE_3__*) ;
 int sata_oxnas_reset_ucode (int ,int ,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void sata_oxnas_qc_prep(struct ata_queued_cmd *qc)
{
 struct sata_oxnas_port_priv *pd;
 int port_no = qc->ap->port_no;


 if (!sata_oxnas_check_link(qc->ap)) {
  ata_port_err(qc->ap,
   "port %d not connected completing with error\n",
   port_no);
  qc->err_mask |= AC_ERR_ATA_BUS;
  ata_qc_complete(qc);
 }

 sata_oxnas_reset_ucode(qc->ap->host, 0, 0);


 if (ata_is_dma(qc->tf.protocol) || ata_is_pio(qc->tf.protocol)) {


  ata_bmdma_qc_prep(qc);


  pd = qc->ap->private_data;

  iowrite32(pd->sgdma_request_pa,
    pd->sgdma_base + SGDMA_REQUESTPTR);


  if (port_no == 0) {
   pd->sgdma_request->control =
    (qc->dma_dir == DMA_FROM_DEVICE) ?
     SGDMA_REQCTL0IN : SGDMA_REQCTL0OUT;
  } else {
   pd->sgdma_request->control =
    (qc->dma_dir == DMA_FROM_DEVICE) ?
     SGDMA_REQCTL1IN : SGDMA_REQCTL1OUT;
  }
  pd->sgdma_request->qualifier = SGDMA_REQQUAL;
  pd->sgdma_request->src_pa = qc->ap->bmdma_prd_dma;
  pd->sgdma_request->dst_pa = qc->ap->bmdma_prd_dma;
  smp_wmb();


  iowrite32(SGDMA_CONTROL_NOGO, pd->sgdma_base + SGDMA_CONTROL);
 }
}
