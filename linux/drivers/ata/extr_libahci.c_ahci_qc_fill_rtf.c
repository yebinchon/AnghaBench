
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int command; } ;
struct TYPE_8__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {scalar_t__ dma_dir; int flags; TYPE_5__ result_tf; TYPE_3__ tf; TYPE_2__* dev; TYPE_4__* ap; } ;
struct ahci_port_priv {scalar_t__ fbs_enabled; int * rx_fis; } ;
struct TYPE_9__ {struct ahci_port_priv* private_data; } ;
struct TYPE_7__ {TYPE_1__* link; } ;
struct TYPE_6__ {int pmp; } ;


 int AHCI_RX_FIS_SZ ;
 scalar_t__ ATA_PROT_PIO ;
 int ATA_QCFLAG_FAILED ;
 scalar_t__ DMA_FROM_DEVICE ;
 int RX_FIS_D2H_REG ;
 int RX_FIS_PIO_SETUP ;
 int ata_tf_from_fis (int *,TYPE_5__*) ;

__attribute__((used)) static bool ahci_qc_fill_rtf(struct ata_queued_cmd *qc)
{
 struct ahci_port_priv *pp = qc->ap->private_data;
 u8 *rx_fis = pp->rx_fis;

 if (pp->fbs_enabled)
  rx_fis += qc->dev->link->pmp * AHCI_RX_FIS_SZ;







 if (qc->tf.protocol == ATA_PROT_PIO && qc->dma_dir == DMA_FROM_DEVICE &&
     !(qc->flags & ATA_QCFLAG_FAILED)) {
  ata_tf_from_fis(rx_fis + RX_FIS_PIO_SETUP, &qc->result_tf);
  qc->result_tf.command = (rx_fis + RX_FIS_PIO_SETUP)[15];
 } else
  ata_tf_from_fis(rx_fis + RX_FIS_D2H_REG, &qc->result_tf);

 return 1;
}
