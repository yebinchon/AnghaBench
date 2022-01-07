
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int rx_irq; int tx_irq; } ;
struct ldc_channel {scalar_t__ state; int lock; TYPE_1__ cfg; int flags; int id; int hs_state; int tx_head; int tx_acked; int chan_state; int tx_tail; int rx_num_entries; int rx_ra; int tx_num_entries; int tx_ra; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int LDC_FLAG_REGISTERED_IRQS ;
 int LDC_FLAG_REGISTERED_QUEUES ;
 int LDC_HS_COMPLETE ;
 int LDC_HS_OPEN ;
 scalar_t__ LDC_MODE_RAW ;
 int LDC_STATE_BOUND ;
 scalar_t__ LDC_STATE_INIT ;
 int enable_irq (int ) ;
 int free_irq (int ,struct ldc_channel*) ;
 int ldc_set_state (struct ldc_channel*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sun4v_ldc_rx_qconf (int ,int ,int ) ;
 unsigned long sun4v_ldc_tx_get_state (int ,int *,int *,int *) ;
 unsigned long sun4v_ldc_tx_qconf (int ,int ,int ) ;

int ldc_bind(struct ldc_channel *lp)
{
 unsigned long hv_err, flags;
 int err = -EINVAL;

 if (lp->state != LDC_STATE_INIT)
  return -EINVAL;

 spin_lock_irqsave(&lp->lock, flags);

 enable_irq(lp->cfg.rx_irq);
 enable_irq(lp->cfg.tx_irq);

 lp->flags |= LDC_FLAG_REGISTERED_IRQS;

 err = -ENODEV;
 hv_err = sun4v_ldc_tx_qconf(lp->id, 0, 0);
 if (hv_err)
  goto out_free_irqs;

 hv_err = sun4v_ldc_tx_qconf(lp->id, lp->tx_ra, lp->tx_num_entries);
 if (hv_err)
  goto out_free_irqs;

 hv_err = sun4v_ldc_rx_qconf(lp->id, 0, 0);
 if (hv_err)
  goto out_unmap_tx;

 hv_err = sun4v_ldc_rx_qconf(lp->id, lp->rx_ra, lp->rx_num_entries);
 if (hv_err)
  goto out_unmap_tx;

 lp->flags |= LDC_FLAG_REGISTERED_QUEUES;

 hv_err = sun4v_ldc_tx_get_state(lp->id,
     &lp->tx_head,
     &lp->tx_tail,
     &lp->chan_state);
 err = -EBUSY;
 if (hv_err)
  goto out_unmap_rx;

 lp->tx_acked = lp->tx_head;

 lp->hs_state = LDC_HS_OPEN;
 ldc_set_state(lp, LDC_STATE_BOUND);

 if (lp->cfg.mode == LDC_MODE_RAW) {




  lp->hs_state = LDC_HS_COMPLETE;
 }

 spin_unlock_irqrestore(&lp->lock, flags);

 return 0;

out_unmap_rx:
 lp->flags &= ~LDC_FLAG_REGISTERED_QUEUES;
 sun4v_ldc_rx_qconf(lp->id, 0, 0);

out_unmap_tx:
 sun4v_ldc_tx_qconf(lp->id, 0, 0);

out_free_irqs:
 lp->flags &= ~LDC_FLAG_REGISTERED_IRQS;
 free_irq(lp->cfg.tx_irq, lp);
 free_irq(lp->cfg.rx_irq, lp);

 spin_unlock_irqrestore(&lp->lock, flags);

 return err;
}
