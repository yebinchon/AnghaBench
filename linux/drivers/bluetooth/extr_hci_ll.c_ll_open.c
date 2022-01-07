
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {int hcill_state; int hcill_lock; int tx_wait_q; int txq; } ;
struct ll_device {int ext_clk; } ;
struct hci_uart {scalar_t__ serdev; struct ll_struct* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCILL_AWAKE ;
 int IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 struct ll_struct* kzalloc (int,int ) ;
 struct ll_device* serdev_device_get_drvdata (scalar_t__) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ll_open(struct hci_uart *hu)
{
 struct ll_struct *ll;

 BT_DBG("hu %p", hu);

 ll = kzalloc(sizeof(*ll), GFP_KERNEL);
 if (!ll)
  return -ENOMEM;

 skb_queue_head_init(&ll->txq);
 skb_queue_head_init(&ll->tx_wait_q);
 spin_lock_init(&ll->hcill_lock);

 ll->hcill_state = HCILL_AWAKE;

 hu->priv = ll;

 if (hu->serdev) {
  struct ll_device *lldev = serdev_device_get_drvdata(hu->serdev);

  if (!IS_ERR(lldev->ext_clk))
   clk_prepare_enable(lldev->ext_clk);
 }

 return 0;
}
