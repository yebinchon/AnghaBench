
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol; } ;
struct ata_queued_cmd {TYPE_1__ tf; struct ata_device* dev; } ;
struct ata_device {int flags; scalar_t__ udma_mask; scalar_t__ mwdma_mask; } ;


 int ATA_DFLAG_DUBIOUS_XFER ;
 int ata_is_data (int ) ;
 scalar_t__ ata_is_pio (int ) ;

__attribute__((used)) static void ata_verify_xfer(struct ata_queued_cmd *qc)
{
 struct ata_device *dev = qc->dev;

 if (!ata_is_data(qc->tf.protocol))
  return;

 if ((dev->mwdma_mask || dev->udma_mask) && ata_is_pio(qc->tf.protocol))
  return;

 dev->flags &= ~ATA_DFLAG_DUBIOUS_XFER;
}
