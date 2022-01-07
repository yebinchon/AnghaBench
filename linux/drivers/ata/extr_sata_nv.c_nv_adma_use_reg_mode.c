
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv_adma_port_priv {int flags; } ;
struct TYPE_4__ {int flags; scalar_t__ protocol; } ;
struct ata_queued_cmd {int flags; TYPE_2__ tf; TYPE_1__* ap; } ;
struct TYPE_3__ {struct nv_adma_port_priv* private_data; } ;


 scalar_t__ ATA_PROT_NODATA ;
 int ATA_QCFLAG_DMAMAP ;
 int ATA_TFLAG_POLLING ;
 int NV_ADMA_ATAPI_SETUP_COMPLETE ;

__attribute__((used)) static int nv_adma_use_reg_mode(struct ata_queued_cmd *qc)
{
 struct nv_adma_port_priv *pp = qc->ap->private_data;



 if ((pp->flags & NV_ADMA_ATAPI_SETUP_COMPLETE) ||
    (qc->tf.flags & ATA_TFLAG_POLLING))
  return 1;

 if ((qc->flags & ATA_QCFLAG_DMAMAP) ||
    (qc->tf.protocol == ATA_PROT_NODATA))
  return 0;

 return 1;
}
