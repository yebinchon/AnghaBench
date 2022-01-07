
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct he_tpdrq {unsigned int cid; int tpd; } ;
struct he_tpd {int status; int entry; TYPE_4__* vcc; scalar_t__ skb; TYPE_2__* iovec; } ;
struct he_dev {struct he_tpdrq* tpdrq_tail; int outstanding_tpds; int tpd_pool; TYPE_1__* pci_dev; struct he_tpdrq* tpdrq_head; scalar_t__ tpdrq_base; } ;
struct TYPE_8__ {TYPE_3__* stats; int (* pop ) (TYPE_4__*,scalar_t__) ;} ;
struct TYPE_7__ {int tx_err; } ;
struct TYPE_6__ {int len; scalar_t__ addr; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int HPRINTK (char*,struct he_tpd*,unsigned int,struct he_tpdrq*) ;
 int TPDRQ_B_H ;
 unsigned long TPDRQ_MASK (struct he_tpdrq*) ;
 int TPDRQ_T ;
 int TPD_ADDR (int ) ;
 int TPD_LEN_MASK ;
 int TPD_MAXIOV ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_any (scalar_t__) ;
 int dma_pool_free (int ,struct he_tpd*,int ) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 struct he_tpdrq* he_readl (struct he_dev*,int ) ;
 int he_writel (struct he_dev*,unsigned long,int ) ;
 int hprintk (char*,unsigned int) ;
 int list_add_tail (int *,int *) ;
 int stub1 (TYPE_4__*,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static __inline__ void
__enqueue_tpd(struct he_dev *he_dev, struct he_tpd *tpd, unsigned cid)
{
 struct he_tpdrq *new_tail;

 HPRINTK("tpdrq %p cid 0x%x -> tpdrq_tail %p\n",
     tpd, cid, he_dev->tpdrq_tail);


 new_tail = (struct he_tpdrq *) ((unsigned long) he_dev->tpdrq_base |
     TPDRQ_MASK(he_dev->tpdrq_tail+1));
 if (new_tail == he_dev->tpdrq_head) {
  he_dev->tpdrq_head = (struct he_tpdrq *)
   (((unsigned long)he_dev->tpdrq_base) |
    TPDRQ_MASK(he_readl(he_dev, TPDRQ_B_H)));

  if (new_tail == he_dev->tpdrq_head) {
   int slot;

   hprintk("tpdrq full (cid 0x%x)\n", cid);






   for (slot = 0; slot < TPD_MAXIOV; ++slot) {
    if (tpd->iovec[slot].addr)
     dma_unmap_single(&he_dev->pci_dev->dev,
      tpd->iovec[slot].addr,
      tpd->iovec[slot].len & TPD_LEN_MASK,
        DMA_TO_DEVICE);
   }
   if (tpd->skb) {
    if (tpd->vcc->pop)
     tpd->vcc->pop(tpd->vcc, tpd->skb);
    else
     dev_kfree_skb_any(tpd->skb);
    atomic_inc(&tpd->vcc->stats->tx_err);
   }
   dma_pool_free(he_dev->tpd_pool, tpd, TPD_ADDR(tpd->status));
   return;
  }
 }


 list_add_tail(&tpd->entry, &he_dev->outstanding_tpds);
 he_dev->tpdrq_tail->tpd = TPD_ADDR(tpd->status);
 he_dev->tpdrq_tail->cid = cid;
 wmb();

 he_dev->tpdrq_tail = new_tail;

 he_writel(he_dev, TPDRQ_MASK(he_dev->tpdrq_tail), TPDRQ_T);
 (void) he_readl(he_dev, TPDRQ_T);
}
