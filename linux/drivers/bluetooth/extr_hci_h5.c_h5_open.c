
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sync ;
struct hci_uart {int hdev_flags; struct h5* priv; scalar_t__ serdev; } ;
struct h5 {int timer; TYPE_1__* vnd; int tx_win; int unrel; int rel; int unack; struct hci_uart* hu; } ;
struct TYPE_2__ {int (* open ) (struct h5*) ;} ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ H5_SYNC_TIMEOUT ;
 int H5_TX_WIN_MAX ;
 int HCI_UART_INIT_PENDING ;
 int h5_link_control (struct hci_uart*,unsigned char const*,int) ;
 int h5_reset_rx (struct h5*) ;
 int h5_timed_event ;
 scalar_t__ jiffies ;
 struct h5* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 struct h5* serdev_device_get_drvdata (scalar_t__) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;
 int stub1 (struct h5*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int h5_open(struct hci_uart *hu)
{
 struct h5 *h5;
 const unsigned char sync[] = { 0x01, 0x7e };

 BT_DBG("hu %p", hu);

 if (hu->serdev) {
  h5 = serdev_device_get_drvdata(hu->serdev);
 } else {
  h5 = kzalloc(sizeof(*h5), GFP_KERNEL);
  if (!h5)
   return -ENOMEM;
 }

 hu->priv = h5;
 h5->hu = hu;

 skb_queue_head_init(&h5->unack);
 skb_queue_head_init(&h5->rel);
 skb_queue_head_init(&h5->unrel);

 h5_reset_rx(h5);

 timer_setup(&h5->timer, h5_timed_event, 0);

 h5->tx_win = H5_TX_WIN_MAX;

 if (h5->vnd && h5->vnd->open)
  h5->vnd->open(h5);

 set_bit(HCI_UART_INIT_PENDING, &hu->hdev_flags);


 h5_link_control(hu, sync, sizeof(sync));
 mod_timer(&h5->timer, jiffies + H5_SYNC_TIMEOUT);

 return 0;
}
