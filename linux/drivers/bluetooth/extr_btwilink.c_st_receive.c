
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_st {TYPE_2__* hdev; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int byte_rx; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;


 int BT_ERR (char*,int) ;
 long EFAULT ;
 int hci_recv_frame (TYPE_2__*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static long st_receive(void *priv_data, struct sk_buff *skb)
{
 struct ti_st *lhst = priv_data;
 int err;

 if (!skb)
  return -EFAULT;

 if (!lhst) {
  kfree_skb(skb);
  return -EFAULT;
 }


 err = hci_recv_frame(lhst->hdev, skb);
 if (err < 0) {
  BT_ERR("Unable to push skb to HCI core(%d)", err);
  return err;
 }

 lhst->hdev->stat.byte_rx += skb->len;

 return 0;
}
