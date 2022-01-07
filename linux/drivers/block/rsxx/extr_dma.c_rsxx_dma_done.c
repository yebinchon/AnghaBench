
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_8__ {scalar_t__ sw_q_depth; int hw_q_depth; } ;
struct TYPE_7__ {size_t idx; struct hw_status* buf; } ;
struct rsxx_dma_ctrl {scalar_t__ e_cnt; int queue_lock; int issue_dma_work; int issue_wq; TYPE_2__ stats; TYPE_3__* card; int id; int activity_timer; TYPE_1__ status; int trackers; } ;
struct rsxx_dma {int laddr; } ;
struct hw_status {int count; scalar_t__ tag; scalar_t__ status; } ;
struct TYPE_9__ {int irq_lock; int eeh_state; int dma_fault; int halt; } ;


 int CARD_TO_DEV (TYPE_3__*) ;
 int CR_INTR_DMA (int ) ;
 int CR_INTR_DMA_ALL ;
 scalar_t__ DMA_ACTIVITY_TIMEOUT ;
 int RSXX_CS_IDX_MASK ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int ,char*,int ,int ,scalar_t__,scalar_t__,scalar_t__,size_t) ;
 int dev_err (int ,char*,scalar_t__,size_t,int ) ;
 int dma_intr_coal_auto_tune (TYPE_3__*) ;
 struct rsxx_dma* get_tracker_dma (int ,scalar_t__) ;
 scalar_t__ jiffies ;
 scalar_t__ le16_to_cpu (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int push_tracker (int ,scalar_t__) ;
 int queue_work (int ,int *) ;
 int rmb () ;
 int rsxx_complete_dma (struct rsxx_dma_ctrl*,struct rsxx_dma*,int ) ;
 int rsxx_disable_ier (TYPE_3__*,int ) ;
 int rsxx_enable_ier (TYPE_3__*,int ) ;
 int rsxx_handle_dma_error (struct rsxx_dma_ctrl*,struct rsxx_dma*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void rsxx_dma_done(struct rsxx_dma_ctrl *ctrl)
{
 struct rsxx_dma *dma;
 unsigned long flags;
 u16 count;
 u8 status;
 u8 tag;
 struct hw_status *hw_st_buf;

 hw_st_buf = ctrl->status.buf;

 if (unlikely(ctrl->card->halt) ||
     unlikely(ctrl->card->dma_fault) ||
     unlikely(ctrl->card->eeh_state))
  return;

 count = le16_to_cpu(hw_st_buf[ctrl->status.idx].count);

 while (count == ctrl->e_cnt) {







  rmb();

  status = hw_st_buf[ctrl->status.idx].status;
  tag = hw_st_buf[ctrl->status.idx].tag;

  dma = get_tracker_dma(ctrl->trackers, tag);
  if (dma == ((void*)0)) {
   spin_lock_irqsave(&ctrl->card->irq_lock, flags);
   rsxx_disable_ier(ctrl->card, CR_INTR_DMA_ALL);
   spin_unlock_irqrestore(&ctrl->card->irq_lock, flags);

   dev_err(CARD_TO_DEV(ctrl->card),
    "No tracker for tag %d "
    "(idx %d id %d)\n",
    tag, ctrl->status.idx, ctrl->id);
   return;
  }

  dev_dbg(CARD_TO_DEV(ctrl->card),
   "Completing DMA%d"
   "(laddr x%x tag %d st: x%x cnt: x%04x) from idx %d.\n",
   ctrl->id, dma->laddr, tag, status, count,
   ctrl->status.idx);

  atomic_dec(&ctrl->stats.hw_q_depth);

  mod_timer(&ctrl->activity_timer,
     jiffies + DMA_ACTIVITY_TIMEOUT);

  if (status)
   rsxx_handle_dma_error(ctrl, dma, status);
  else
   rsxx_complete_dma(ctrl, dma, 0);

  push_tracker(ctrl->trackers, tag);

  ctrl->status.idx = (ctrl->status.idx + 1) &
       RSXX_CS_IDX_MASK;
  ctrl->e_cnt++;

  count = le16_to_cpu(hw_st_buf[ctrl->status.idx].count);
 }

 dma_intr_coal_auto_tune(ctrl->card);

 if (atomic_read(&ctrl->stats.hw_q_depth) == 0)
  del_timer_sync(&ctrl->activity_timer);

 spin_lock_irqsave(&ctrl->card->irq_lock, flags);
 rsxx_enable_ier(ctrl->card, CR_INTR_DMA(ctrl->id));
 spin_unlock_irqrestore(&ctrl->card->irq_lock, flags);

 spin_lock_bh(&ctrl->queue_lock);
 if (ctrl->stats.sw_q_depth)
  queue_work(ctrl->issue_wq, &ctrl->issue_dma_work);
 spin_unlock_bh(&ctrl->queue_lock);
}
