
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int rx_ibs_state; int hci_ibs_lock; int ibs_sent_wacks; int ws_awake_rx; int workqueue; int ibs_recv_wakes; } ;
struct hci_uart {struct qca_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int BT_ERR (char*,...) ;


 int HCI_IBS_WAKE_ACK ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int queue_work (int ,int *) ;
 int send_hci_ibs_cmd (int ,struct hci_uart*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void device_want_to_wakeup(struct hci_uart *hu)
{
 unsigned long flags;
 struct qca_data *qca = hu->priv;

 BT_DBG("hu %p want to wake up", hu);

 spin_lock_irqsave(&qca->hci_ibs_lock, flags);

 qca->ibs_recv_wakes++;

 switch (qca->rx_ibs_state) {
 case 129:



  queue_work(qca->workqueue, &qca->ws_awake_rx);
  spin_unlock_irqrestore(&qca->hci_ibs_lock, flags);
  return;

 case 128:



  if (send_hci_ibs_cmd(HCI_IBS_WAKE_ACK, hu) < 0) {
   BT_ERR("Failed to acknowledge device wake up");
   break;
  }
  qca->ibs_sent_wacks++;
  break;

 default:

  BT_ERR("Received HCI_IBS_WAKE_IND in rx state %d",
         qca->rx_ibs_state);
  break;
 }

 spin_unlock_irqrestore(&qca->hci_ibs_lock, flags);


 hci_uart_tx_wakeup(hu);
}
