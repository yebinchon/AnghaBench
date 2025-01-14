
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct scq_info {int pending; int transmit; int paddr; int base; } ;
struct idt77252_dev {TYPE_1__* pcidev; } ;
struct atm_vcc {int (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_4__ {struct atm_vcc* vcc; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__* ATM_SKB (struct sk_buff*) ;
 int DMA_TO_DEVICE ;
 int IDT77252_PRV_PADDR (struct sk_buff*) ;
 int SCQ_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (struct scq_info*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int stub2 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void
free_scq(struct idt77252_dev *card, struct scq_info *scq)
{
 struct sk_buff *skb;
 struct atm_vcc *vcc;

 dma_free_coherent(&card->pcidev->dev, SCQ_SIZE,
     scq->base, scq->paddr);

 while ((skb = skb_dequeue(&scq->transmit))) {
  dma_unmap_single(&card->pcidev->dev, IDT77252_PRV_PADDR(skb),
     skb->len, DMA_TO_DEVICE);

  vcc = ATM_SKB(skb)->vcc;
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb(skb);
 }

 while ((skb = skb_dequeue(&scq->pending))) {
  dma_unmap_single(&card->pcidev->dev, IDT77252_PRV_PADDR(skb),
     skb->len, DMA_TO_DEVICE);

  vcc = ATM_SKB(skb)->vcc;
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb(skb);
 }

 kfree(scq);
}
