
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rsxx_dma {scalar_t__ cmd; int list; int dma_addr; } ;
struct rsxx_cardinfo {int n_targets; TYPE_3__* ctrl; TYPE_1__* dev; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {int sw_q_depth; int hw_q_depth; int reads_issued; int discards_issued; int writes_issued; } ;
struct TYPE_6__ {int queue_lock; scalar_t__ e_cnt; TYPE_2__ stats; int queue; int trackers; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HW_CMD_BLK_DISCARD ;
 scalar_t__ HW_CMD_BLK_WRITE ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int RSXX_MAX_OUTSTANDING_CMDS ;
 int atomic_sub (int,int *) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int get_dma_size (struct rsxx_dma*) ;
 struct rsxx_dma* get_tracker_dma (int ,int) ;
 struct list_head* kcalloc (int,int,int ) ;
 int kfree (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_splice (struct list_head*,int *) ;
 int push_tracker (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int rsxx_eeh_save_issued_dmas(struct rsxx_cardinfo *card)
{
 int i;
 int j;
 int cnt;
 struct rsxx_dma *dma;
 struct list_head *issued_dmas;

 issued_dmas = kcalloc(card->n_targets, sizeof(*issued_dmas),
         GFP_KERNEL);
 if (!issued_dmas)
  return -ENOMEM;

 for (i = 0; i < card->n_targets; i++) {
  INIT_LIST_HEAD(&issued_dmas[i]);
  cnt = 0;
  for (j = 0; j < RSXX_MAX_OUTSTANDING_CMDS; j++) {
   dma = get_tracker_dma(card->ctrl[i].trackers, j);
   if (dma == ((void*)0))
    continue;

   if (dma->cmd == HW_CMD_BLK_WRITE)
    card->ctrl[i].stats.writes_issued--;
   else if (dma->cmd == HW_CMD_BLK_DISCARD)
    card->ctrl[i].stats.discards_issued--;
   else
    card->ctrl[i].stats.reads_issued--;

   if (dma->cmd != HW_CMD_BLK_DISCARD) {
    dma_unmap_page(&card->dev->dev, dma->dma_addr,
            get_dma_size(dma),
            dma->cmd == HW_CMD_BLK_WRITE ?
            DMA_TO_DEVICE :
            DMA_FROM_DEVICE);
   }

   list_add_tail(&dma->list, &issued_dmas[i]);
   push_tracker(card->ctrl[i].trackers, j);
   cnt++;
  }

  spin_lock_bh(&card->ctrl[i].queue_lock);
  list_splice(&issued_dmas[i], &card->ctrl[i].queue);

  atomic_sub(cnt, &card->ctrl[i].stats.hw_q_depth);
  card->ctrl[i].stats.sw_q_depth += cnt;
  card->ctrl[i].e_cnt = 0;
  spin_unlock_bh(&card->ctrl[i].queue_lock);
 }

 kfree(issued_dmas);

 return 0;
}
