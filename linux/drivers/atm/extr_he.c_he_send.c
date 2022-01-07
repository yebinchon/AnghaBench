
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct he_tpd {int status; int length0; struct sk_buff* skb; struct atm_vcc* vcc; void* address0; TYPE_2__* iovec; } ;
struct he_dev {int global_lock; TYPE_3__* pci_dev; } ;
struct TYPE_7__ {scalar_t__ aal; } ;
struct atm_vcc {TYPE_4__* stats; int (* pop ) (struct atm_vcc*,struct sk_buff*) ;TYPE_1__ qos; int vci; int vpi; int dev; } ;
typedef int skb_frag_t ;
struct TYPE_12__ {struct atm_vcc* vcc; } ;
struct TYPE_11__ {int nr_frags; int * frags; } ;
struct TYPE_10__ {int tx; int tx_err; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int len; void* addr; } ;


 scalar_t__ ATM_AAL0 ;
 int ATM_AAL0_SDU ;
 scalar_t__ ATM_AAL5 ;
 int ATM_CELL_PAYLOAD ;
 char ATM_HDR_CLP ;
 char ATM_HDR_PTI_MASK ;
 char ATM_HDR_PTI_SHIFT ;
 TYPE_6__* ATM_SKB (struct sk_buff*) ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 struct he_dev* HE_DEV (int ) ;
 int HE_TPD_BUFSIZE ;
 int HPRINTK (char*,int ,int ) ;
 int TPD_CELLTYPE (int) ;
 int TPD_CLP ;
 int TPD_INT ;
 int TPD_LST ;
 int TPD_MAXIOV ;
 int TPD_USERCELL ;
 struct he_tpd* __alloc_tpd (struct he_dev*) ;
 int __enqueue_tpd (struct he_dev*,struct he_tpd*,unsigned int) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 void* dma_map_single (int *,int ,int,int ) ;
 unsigned int he_mkcid (struct he_dev*,int ,int ) ;
 int hprintk (char*,...) ;
 void* skb_frag_dma_map (int *,int *,int ,int,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int stub2 (struct atm_vcc*,struct sk_buff*) ;
 int stub3 (struct atm_vcc*,struct sk_buff*) ;
 int stub4 (struct atm_vcc*,struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static int
he_send(struct atm_vcc *vcc, struct sk_buff *skb)
{
 unsigned long flags;
 struct he_dev *he_dev = HE_DEV(vcc->dev);
 unsigned cid = he_mkcid(he_dev, vcc->vpi, vcc->vci);
 struct he_tpd *tpd;






 HPRINTK("send %d.%d\n", vcc->vpi, vcc->vci);

 if ((skb->len > 0xffff) ||
     ((vcc->qos.aal == ATM_AAL0) && (skb->len != ATM_AAL0_SDU))) {
  hprintk("buffer too large (or small) -- %d bytes\n", skb->len );
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb_any(skb);
  atomic_inc(&vcc->stats->tx_err);
  return -EINVAL;
 }


 if (skb_shinfo(skb)->nr_frags) {
  hprintk("no scatter/gather support\n");
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb_any(skb);
  atomic_inc(&vcc->stats->tx_err);
  return -EINVAL;
 }

 spin_lock_irqsave(&he_dev->global_lock, flags);

 tpd = __alloc_tpd(he_dev);
 if (tpd == ((void*)0)) {
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb_any(skb);
  atomic_inc(&vcc->stats->tx_err);
  spin_unlock_irqrestore(&he_dev->global_lock, flags);
  return -ENOMEM;
 }

 if (vcc->qos.aal == ATM_AAL5)
  tpd->status |= TPD_CELLTYPE(TPD_USERCELL);
 else {
  char *pti_clp = (void *) (skb->data + 3);
  int clp, pti;

  pti = (*pti_clp & ATM_HDR_PTI_MASK) >> ATM_HDR_PTI_SHIFT;
  clp = (*pti_clp & ATM_HDR_CLP);
  tpd->status |= TPD_CELLTYPE(pti);
  if (clp)
   tpd->status |= TPD_CLP;

  skb_pull(skb, ATM_AAL0_SDU - ATM_CELL_PAYLOAD);
 }
 tpd->address0 = dma_map_single(&he_dev->pci_dev->dev, skb->data, skb->len, DMA_TO_DEVICE);
 tpd->length0 = skb->len | TPD_LST;

 tpd->status |= TPD_INT;

 tpd->vcc = vcc;
 tpd->skb = skb;
 wmb();
 ATM_SKB(skb)->vcc = vcc;

 __enqueue_tpd(he_dev, tpd, cid);
 spin_unlock_irqrestore(&he_dev->global_lock, flags);

 atomic_inc(&vcc->stats->tx);

 return 0;
}
