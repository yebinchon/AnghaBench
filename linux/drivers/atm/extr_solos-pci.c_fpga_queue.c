
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solos_card {int tx_mask; int tx_queue_lock; int * tx_queue; } ;
struct sk_buff {int dummy; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {struct atm_vcc* vcc; } ;


 TYPE_1__* SKB_CB (struct sk_buff*) ;
 int fpga_tx (struct solos_card*) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fpga_queue(struct solos_card *card, int port, struct sk_buff *skb,
         struct atm_vcc *vcc)
{
 int old_len;
 unsigned long flags;

 SKB_CB(skb)->vcc = vcc;

 spin_lock_irqsave(&card->tx_queue_lock, flags);
 old_len = skb_queue_len(&card->tx_queue[port]);
 skb_queue_tail(&card->tx_queue[port], skb);
 if (!old_len)
  card->tx_mask |= (1 << port);
 spin_unlock_irqrestore(&card->tx_queue_lock, flags);



 if (!old_len)
  fpga_tx(card);
}
