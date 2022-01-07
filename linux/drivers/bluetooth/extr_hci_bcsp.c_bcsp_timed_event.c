
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hci_uart {int dummy; } ;
struct TYPE_2__ {int lock; int qlen; } ;
struct bcsp_struct {int msgq_txseq; TYPE_1__ unack; int rel; struct hci_uart* hu; } ;


 int BT_DBG (char*,struct hci_uart*,int ) ;
 int SINGLE_DEPTH_NESTING ;
 struct sk_buff* __skb_dequeue_tail (TYPE_1__*) ;
 struct bcsp_struct* bcsp ;
 struct bcsp_struct* from_timer (int ,struct timer_list*,int ) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tbcsp ;

__attribute__((used)) static void bcsp_timed_event(struct timer_list *t)
{
 struct bcsp_struct *bcsp = from_timer(bcsp, t, tbcsp);
 struct hci_uart *hu = bcsp->hu;
 struct sk_buff *skb;
 unsigned long flags;

 BT_DBG("hu %p retransmitting %u pkts", hu, bcsp->unack.qlen);

 spin_lock_irqsave_nested(&bcsp->unack.lock, flags, SINGLE_DEPTH_NESTING);

 while ((skb = __skb_dequeue_tail(&bcsp->unack)) != ((void*)0)) {
  bcsp->msgq_txseq = (bcsp->msgq_txseq - 1) & 0x07;
  skb_queue_head(&bcsp->rel, skb);
 }

 spin_unlock_irqrestore(&bcsp->unack.lock, flags);

 hci_uart_tx_wakeup(hu);
}
