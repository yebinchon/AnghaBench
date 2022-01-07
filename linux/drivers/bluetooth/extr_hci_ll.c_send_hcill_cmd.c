
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ll_struct {int txq; } ;
struct hci_uart {struct ll_struct* priv; } ;


 int BT_DBG (char*,struct hci_uart*,int ) ;
 int BT_ERR (char*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int skb_put_u8 (struct sk_buff*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int send_hcill_cmd(u8 cmd, struct hci_uart *hu)
{
 int err = 0;
 struct sk_buff *skb = ((void*)0);
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p cmd 0x%x", hu, cmd);


 skb = bt_skb_alloc(1, GFP_ATOMIC);
 if (!skb) {
  BT_ERR("cannot allocate memory for HCILL packet");
  err = -ENOMEM;
  goto out;
 }


 skb_put_u8(skb, cmd);


 skb_queue_tail(&ll->txq, skb);
out:
 return err;
}
