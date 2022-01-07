
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct dtl1_info {int tx_state; TYPE_3__* hdev; int txq; TYPE_4__* p_dev; } ;
struct TYPE_8__ {TYPE_1__** resource; } ;
struct TYPE_6__ {int byte_tx; } ;
struct TYPE_7__ {TYPE_2__ stat; } ;
struct TYPE_5__ {unsigned int start; } ;


 int BT_ERR (char*) ;
 int XMIT_SENDING ;
 int XMIT_WAITING ;
 int XMIT_WAKEUP ;
 int clear_bit (int ,int *) ;
 int dtl1_write (unsigned int,int,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 int pcmcia_dev_present (TYPE_4__*) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dtl1_write_wakeup(struct dtl1_info *info)
{
 if (!info) {
  BT_ERR("Unknown device");
  return;
 }

 if (test_bit(XMIT_WAITING, &(info->tx_state))) {
  set_bit(XMIT_WAKEUP, &(info->tx_state));
  return;
 }

 if (test_and_set_bit(XMIT_SENDING, &(info->tx_state))) {
  set_bit(XMIT_WAKEUP, &(info->tx_state));
  return;
 }

 do {
  unsigned int iobase = info->p_dev->resource[0]->start;
  register struct sk_buff *skb;
  int len;

  clear_bit(XMIT_WAKEUP, &(info->tx_state));

  if (!pcmcia_dev_present(info->p_dev))
   return;

  skb = skb_dequeue(&(info->txq));
  if (!skb)
   break;


  len = dtl1_write(iobase, 32, skb->data, skb->len);

  if (len == skb->len) {
   set_bit(XMIT_WAITING, &(info->tx_state));
   kfree_skb(skb);
  } else {
   skb_pull(skb, len);
   skb_queue_head(&(info->txq), skb);
  }

  info->hdev->stat.byte_tx += len;

 } while (test_bit(XMIT_WAKEUP, &(info->tx_state)));

 clear_bit(XMIT_SENDING, &(info->tx_state));
}
