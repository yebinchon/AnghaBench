
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {int rx_skb; int txq; int tx_wait_q; } ;
struct ll_device {int ext_clk; int enable_gpio; } ;
struct hci_uart {struct ll_struct* priv; scalar_t__ serdev; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int kfree (struct ll_struct*) ;
 int kfree_skb (int ) ;
 struct ll_device* serdev_device_get_drvdata (scalar_t__) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ll_close(struct hci_uart *hu)
{
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&ll->tx_wait_q);
 skb_queue_purge(&ll->txq);

 kfree_skb(ll->rx_skb);

 if (hu->serdev) {
  struct ll_device *lldev = serdev_device_get_drvdata(hu->serdev);

  gpiod_set_value_cansleep(lldev->enable_gpio, 0);

  clk_disable_unprepare(lldev->ext_clk);
 }

 hu->priv = ((void*)0);

 kfree(ll);

 return 0;
}
