
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrvl_data {int flags; int rawq; int txq; } ;
struct hci_uart {scalar_t__ serdev; struct mrvl_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int STATE_CHIP_VER_PENDING ;
 int hci_uart_has_flow_control (struct hci_uart*) ;
 int kfree (struct mrvl_data*) ;
 struct mrvl_data* kzalloc (int,int ) ;
 int serdev_device_open (scalar_t__) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int mrvl_open(struct hci_uart *hu)
{
 struct mrvl_data *mrvl;
 int ret;

 BT_DBG("hu %p", hu);

 if (!hci_uart_has_flow_control(hu))
  return -EOPNOTSUPP;

 mrvl = kzalloc(sizeof(*mrvl), GFP_KERNEL);
 if (!mrvl)
  return -ENOMEM;

 skb_queue_head_init(&mrvl->txq);
 skb_queue_head_init(&mrvl->rawq);

 set_bit(STATE_CHIP_VER_PENDING, &mrvl->flags);

 hu->priv = mrvl;

 if (hu->serdev) {
  ret = serdev_device_open(hu->serdev);
  if (ret)
   goto err;
 }

 return 0;
err:
 kfree(mrvl);

 return ret;
}
