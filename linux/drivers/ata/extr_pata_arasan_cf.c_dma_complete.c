
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int protocol; } ;
struct ata_queued_cmd {TYPE_3__* ap; TYPE_1__ tf; int err_mask; } ;
struct arasan_cf_dev {TYPE_4__* host; int irq; struct ata_queued_cmd* qc; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_6__ {int eh_info; } ;
struct TYPE_7__ {TYPE_2__ link; } ;


 int ata_ehi_push_desc (int *,char*) ;
 scalar_t__ ata_is_dma (int ) ;
 int ata_sff_interrupt (int ,TYPE_4__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void dma_complete(struct arasan_cf_dev *acdev)
{
 struct ata_queued_cmd *qc = acdev->qc;
 unsigned long flags;

 acdev->qc = ((void*)0);
 ata_sff_interrupt(acdev->irq, acdev->host);

 spin_lock_irqsave(&acdev->host->lock, flags);
 if (unlikely(qc->err_mask) && ata_is_dma(qc->tf.protocol))
  ata_ehi_push_desc(&qc->ap->link.eh_info, "DMA Failed: Timeout");
 spin_unlock_irqrestore(&acdev->host->lock, flags);
}
