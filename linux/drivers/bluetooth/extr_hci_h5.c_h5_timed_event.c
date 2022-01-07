
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sync_req ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hci_uart {TYPE_1__* hdev; } ;
struct TYPE_4__ {int lock; int qlen; } ;
struct h5 {scalar_t__ state; scalar_t__ sleep; int tx_seq; TYPE_2__ unack; int rel; int timer; struct hci_uart* hu; } ;
typedef int conf_req ;
struct TYPE_3__ {int name; } ;


 int BT_DBG (char*,struct hci_uart*,...) ;
 scalar_t__ H5_ACTIVE ;
 scalar_t__ H5_AWAKE ;
 scalar_t__ H5_INITIALIZED ;
 scalar_t__ H5_SLEEPING ;
 scalar_t__ H5_SYNC_TIMEOUT ;
 scalar_t__ H5_UNINITIALIZED ;
 int SINGLE_DEPTH_NESTING ;
 struct sk_buff* __skb_dequeue_tail (TYPE_2__*) ;
 struct h5* from_timer (int ,struct timer_list*,int ) ;
 struct h5* h5 ;
 unsigned char h5_cfg_field (struct h5*) ;
 int h5_link_control (struct hci_uart*,unsigned char const*,int) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void h5_timed_event(struct timer_list *t)
{
 const unsigned char sync_req[] = { 0x01, 0x7e };
 unsigned char conf_req[3] = { 0x03, 0xfc };
 struct h5 *h5 = from_timer(h5, t, timer);
 struct hci_uart *hu = h5->hu;
 struct sk_buff *skb;
 unsigned long flags;

 BT_DBG("%s", hu->hdev->name);

 if (h5->state == H5_UNINITIALIZED)
  h5_link_control(hu, sync_req, sizeof(sync_req));

 if (h5->state == H5_INITIALIZED) {
  conf_req[2] = h5_cfg_field(h5);
  h5_link_control(hu, conf_req, sizeof(conf_req));
 }

 if (h5->state != H5_ACTIVE) {
  mod_timer(&h5->timer, jiffies + H5_SYNC_TIMEOUT);
  goto wakeup;
 }

 if (h5->sleep != H5_AWAKE) {
  h5->sleep = H5_SLEEPING;
  goto wakeup;
 }

 BT_DBG("hu %p retransmitting %u pkts", hu, h5->unack.qlen);

 spin_lock_irqsave_nested(&h5->unack.lock, flags, SINGLE_DEPTH_NESTING);

 while ((skb = __skb_dequeue_tail(&h5->unack)) != ((void*)0)) {
  h5->tx_seq = (h5->tx_seq - 1) & 0x07;
  skb_queue_head(&h5->rel, skb);
 }

 spin_unlock_irqrestore(&h5->unack.lock, flags);

wakeup:
 hci_uart_tx_wakeup(hu);
}
