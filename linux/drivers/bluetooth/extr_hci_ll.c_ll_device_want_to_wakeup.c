
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {int hcill_state; int hcill_lock; } ;
struct hci_uart {struct ll_struct* priv; } ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*,...) ;


 int HCILL_WAKE_UP_ACK ;
 int __ll_do_awake (struct ll_struct*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int send_hcill_cmd (int ,struct hci_uart*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ll_device_want_to_wakeup(struct hci_uart *hu)
{
 unsigned long flags;
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p", hu);


 spin_lock_irqsave(&ll->hcill_lock, flags);

 switch (ll->hcill_state) {
 case 128:
  BT_DBG("dual wake-up-indication");

 case 129:

  if (send_hcill_cmd(HCILL_WAKE_UP_ACK, hu) < 0) {
   BT_ERR("cannot acknowledge device wake up");
   goto out;
  }
  break;
 default:

  BT_ERR("received HCILL_WAKE_UP_IND in state %ld",
         ll->hcill_state);
  break;
 }


 __ll_do_awake(ll);

out:
 spin_unlock_irqrestore(&ll->hcill_lock, flags);


 hci_uart_tx_wakeup(hu);
}
