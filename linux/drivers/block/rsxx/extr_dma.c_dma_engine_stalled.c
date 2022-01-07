
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_5__ {scalar_t__ idx; } ;
struct TYPE_4__ {int hw_q_depth; } ;
struct rsxx_dma_ctrl {int id; TYPE_3__* card; int queue_lock; int queue; int activity_timer; scalar_t__ regmap; TYPE_2__ cmd; TYPE_1__ stats; } ;
struct TYPE_6__ {int dma_fault; int eeh_state; } ;


 int CARD_TO_DEV (TYPE_3__*) ;
 int COMPLETE_DMA ;
 scalar_t__ DMA_ACTIVITY_TIMEOUT ;
 scalar_t__ SW_CMD_IDX ;
 int activity_timer ;
 scalar_t__ atomic_read (int *) ;
 struct rsxx_dma_ctrl* ctrl ;
 int dev_info (int ,char*,int,int ) ;
 int dev_warn (int ,char*,...) ;
 struct rsxx_dma_ctrl* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rsxx_cleanup_dma_queue (struct rsxx_dma_ctrl*,int *,int ) ;
 scalar_t__ rsxx_dma_cancel (struct rsxx_dma_ctrl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dma_engine_stalled(struct timer_list *t)
{
 struct rsxx_dma_ctrl *ctrl = from_timer(ctrl, t, activity_timer);
 int cnt;

 if (atomic_read(&ctrl->stats.hw_q_depth) == 0 ||
     unlikely(ctrl->card->eeh_state))
  return;

 if (ctrl->cmd.idx != ioread32(ctrl->regmap + SW_CMD_IDX)) {




  dev_warn(CARD_TO_DEV(ctrl->card),
   "SW_CMD_IDX write was lost, re-writing...\n");
  iowrite32(ctrl->cmd.idx, ctrl->regmap + SW_CMD_IDX);
  mod_timer(&ctrl->activity_timer,
     jiffies + DMA_ACTIVITY_TIMEOUT);
 } else {
  dev_warn(CARD_TO_DEV(ctrl->card),
   "DMA channel %d has stalled, faulting interface.\n",
   ctrl->id);
  ctrl->card->dma_fault = 1;


  spin_lock(&ctrl->queue_lock);
  cnt = rsxx_cleanup_dma_queue(ctrl, &ctrl->queue, COMPLETE_DMA);
  spin_unlock(&ctrl->queue_lock);

  cnt += rsxx_dma_cancel(ctrl);

  if (cnt)
   dev_info(CARD_TO_DEV(ctrl->card),
    "Freed %d queued DMAs on channel %d\n",
    cnt, ctrl->id);
 }
}
