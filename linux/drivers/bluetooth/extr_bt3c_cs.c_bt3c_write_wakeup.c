
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct bt3c_info {TYPE_3__* hdev; int tx_state; int txq; TYPE_4__* p_dev; } ;
struct TYPE_8__ {TYPE_1__** resource; } ;
struct TYPE_6__ {int byte_tx; } ;
struct TYPE_7__ {TYPE_2__ stat; } ;
struct TYPE_5__ {unsigned int start; } ;


 int BT_ERR (char*) ;
 int XMIT_SENDING ;
 int bt3c_write (unsigned int,int,int ,int) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int pcmcia_dev_present (TYPE_4__*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void bt3c_write_wakeup(struct bt3c_info *info)
{
 if (!info) {
  BT_ERR("Unknown device");
  return;
 }

 if (test_and_set_bit(XMIT_SENDING, &(info->tx_state)))
  return;

 do {
  unsigned int iobase = info->p_dev->resource[0]->start;
  register struct sk_buff *skb;
  int len;

  if (!pcmcia_dev_present(info->p_dev))
   break;

  skb = skb_dequeue(&(info->txq));
  if (!skb) {
   clear_bit(XMIT_SENDING, &(info->tx_state));
   break;
  }


  len = bt3c_write(iobase, 256, skb->data, skb->len);

  if (len != skb->len)
   BT_ERR("Very strange");

  kfree_skb(skb);

  info->hdev->stat.byte_tx += len;

 } while (0);
}
