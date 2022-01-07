
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct solos_card {int tx_mask; unsigned long dma_alignment; unsigned char* dma_bounce; int tx_lock; scalar_t__ config_regs; int param_wq; TYPE_1__* dev; struct sk_buff** tx_skb; scalar_t__ using_dma; int tx_queue_lock; int * tx_queue; } ;
struct sk_buff {unsigned char* data; int len; } ;
struct pkt_hdr {int vci; int vpi; int size; } ;
struct atm_vcc {TYPE_2__* stats; } ;
struct TYPE_6__ {int dma_addr; struct atm_vcc* vcc; } ;
struct TYPE_5__ {int tx; } ;
struct TYPE_4__ {int dev; } ;


 unsigned char BUF_SIZE ;
 int DMA_TO_DEVICE ;
 scalar_t__ FLAGS_ADDR ;
 TYPE_3__* SKB_CB (struct sk_buff*) ;
 int TX_BUF (struct solos_card*,unsigned char) ;
 scalar_t__ TX_DMA_ADDR (unsigned char) ;
 scalar_t__ atmdebug ;
 int atomic_inc (int *) ;
 int dev_info (int *,char*,int,...) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_map_single (int *,unsigned char*,int ,int ) ;
 int dma_unmap_single (int *,int,int ,int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int le16_to_cpu (int ) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memcpy_toio (int ,unsigned char*,int ) ;
 int print_buffer (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int solos_pop (struct atm_vcc*,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static uint32_t fpga_tx(struct solos_card *card)
{
 uint32_t tx_pending, card_flags;
 uint32_t tx_started = 0;
 struct sk_buff *skb;
 struct atm_vcc *vcc;
 unsigned char port;
 unsigned long flags;

 spin_lock_irqsave(&card->tx_lock, flags);

 card_flags = ioread32(card->config_regs + FLAGS_ADDR);







 tx_pending = card->tx_mask & ~card_flags;

 for (port = 0; tx_pending; tx_pending >>= 1, port++) {
  if (tx_pending & 1) {
   struct sk_buff *oldskb = card->tx_skb[port];
   if (oldskb) {
    dma_unmap_single(&card->dev->dev, SKB_CB(oldskb)->dma_addr,
       oldskb->len, DMA_TO_DEVICE);
    card->tx_skb[port] = ((void*)0);
   }
   spin_lock(&card->tx_queue_lock);
   skb = skb_dequeue(&card->tx_queue[port]);
   if (!skb)
    card->tx_mask &= ~(1 << port);
   spin_unlock(&card->tx_queue_lock);

   if (skb && !card->using_dma) {
    memcpy_toio(TX_BUF(card, port), skb->data, skb->len);
    tx_started |= 1 << port;
    oldskb = skb;
   } else if (skb && card->using_dma) {
    unsigned char *data = skb->data;
    if ((unsigned long)data & card->dma_alignment) {
     data = card->dma_bounce + (BUF_SIZE * port);
     memcpy(data, skb->data, skb->len);
    }
    SKB_CB(skb)->dma_addr = dma_map_single(&card->dev->dev, data,
               skb->len, DMA_TO_DEVICE);
    card->tx_skb[port] = skb;
    iowrite32(SKB_CB(skb)->dma_addr,
       card->config_regs + TX_DMA_ADDR(port));
   }

   if (!oldskb)
    continue;


   if (atmdebug) {
    struct pkt_hdr *header = (void *)oldskb->data;
    int size = le16_to_cpu(header->size);

    skb_pull(oldskb, sizeof(*header));
    dev_info(&card->dev->dev, "Transmitted: port %d\n",
      port);
    dev_info(&card->dev->dev, "size: %d VPI: %d VCI: %d\n",
      size, le16_to_cpu(header->vpi),
      le16_to_cpu(header->vci));
    print_buffer(oldskb);
   }

   vcc = SKB_CB(oldskb)->vcc;

   if (vcc) {
    atomic_inc(&vcc->stats->tx);
    solos_pop(vcc, oldskb);
   } else {
    dev_kfree_skb_irq(oldskb);
    wake_up(&card->param_wq);
   }
  }
 }

 if (tx_started)
  iowrite32(tx_started, card->config_regs + FLAGS_ADDR);

 spin_unlock_irqrestore(&card->tx_lock, flags);
 return card_flags;
}
