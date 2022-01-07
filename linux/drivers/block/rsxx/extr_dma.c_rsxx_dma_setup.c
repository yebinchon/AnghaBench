
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dma_addr; scalar_t__ buf; } ;
struct TYPE_4__ {int dma_addr; scalar_t__ buf; } ;
struct rsxx_dma_ctrl {int id; TYPE_2__ cmd; TYPE_1__ status; scalar_t__ trackers; int * done_wq; int * issue_wq; struct rsxx_cardinfo* card; scalar_t__ regmap; } ;
struct rsxx_cardinfo {int n_targets; int scrub_hard; TYPE_3__* dev; struct rsxx_dma_ctrl* ctrl; int irq_lock; scalar_t__ config_valid; scalar_t__ dma_fault; scalar_t__ regmap; } ;
struct TYPE_6__ {int dev; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int COMMAND_BUFFER_SIZE8 ;
 int CR_INTR_DMA (int) ;
 int STATUS_BUFFER_SIZE8 ;
 int destroy_workqueue (int *) ;
 int dev_info (int ,char*,int) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int rsxx_dma_configure (struct rsxx_cardinfo*) ;
 int rsxx_dma_ctrl_init (TYPE_3__*,struct rsxx_dma_ctrl*) ;
 int rsxx_dma_queue_reset (struct rsxx_cardinfo*) ;
 int rsxx_enable_ier_and_isr (struct rsxx_cardinfo*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (scalar_t__) ;

int rsxx_dma_setup(struct rsxx_cardinfo *card)
{
 unsigned long flags;
 int st;
 int i;

 dev_info(CARD_TO_DEV(card),
  "Initializing %d DMA targets\n",
  card->n_targets);


 for (i = 0; i < card->n_targets; i++)
  card->ctrl[i].regmap = card->regmap + (i * 4096);

 card->dma_fault = 0;


 rsxx_dma_queue_reset(card);


 for (i = 0; i < card->n_targets; i++) {
  st = rsxx_dma_ctrl_init(card->dev, &card->ctrl[i]);
  if (st)
   goto failed_dma_setup;

  card->ctrl[i].card = card;
  card->ctrl[i].id = i;
 }

 card->scrub_hard = 1;

 if (card->config_valid)
  rsxx_dma_configure(card);


 for (i = 0; i < card->n_targets; i++) {
  spin_lock_irqsave(&card->irq_lock, flags);
  rsxx_enable_ier_and_isr(card, CR_INTR_DMA(i));
  spin_unlock_irqrestore(&card->irq_lock, flags);
 }

 return 0;

failed_dma_setup:
 for (i = 0; i < card->n_targets; i++) {
  struct rsxx_dma_ctrl *ctrl = &card->ctrl[i];

  if (ctrl->issue_wq) {
   destroy_workqueue(ctrl->issue_wq);
   ctrl->issue_wq = ((void*)0);
  }

  if (ctrl->done_wq) {
   destroy_workqueue(ctrl->done_wq);
   ctrl->done_wq = ((void*)0);
  }

  if (ctrl->trackers)
   vfree(ctrl->trackers);

  if (ctrl->status.buf)
   dma_free_coherent(&card->dev->dev, STATUS_BUFFER_SIZE8,
       ctrl->status.buf,
       ctrl->status.dma_addr);
  if (ctrl->cmd.buf)
   dma_free_coherent(&card->dev->dev, COMMAND_BUFFER_SIZE8,
       ctrl->cmd.buf, ctrl->cmd.dma_addr);
 }

 return st;
}
