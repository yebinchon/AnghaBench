
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {scalar_t__ hcill_state; int hcill_lock; } ;
struct hci_uart {struct ll_struct* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int BT_ERR (char*,...) ;
 scalar_t__ HCILL_ASLEEP ;
 scalar_t__ HCILL_AWAKE ;
 int HCILL_GO_TO_SLEEP_ACK ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 scalar_t__ send_hcill_cmd (int ,struct hci_uart*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ll_device_want_to_sleep(struct hci_uart *hu)
{
 unsigned long flags;
 struct ll_struct *ll = hu->priv;

 BT_DBG("hu %p", hu);


 spin_lock_irqsave(&ll->hcill_lock, flags);


 if (ll->hcill_state != HCILL_AWAKE)
  BT_ERR("ERR: HCILL_GO_TO_SLEEP_IND in state %ld",
         ll->hcill_state);


 if (send_hcill_cmd(HCILL_GO_TO_SLEEP_ACK, hu) < 0) {
  BT_ERR("cannot acknowledge device sleep");
  goto out;
 }


 ll->hcill_state = HCILL_ASLEEP;

out:
 spin_unlock_irqrestore(&ll->hcill_lock, flags);


 hci_uart_tx_wakeup(hu);
}
