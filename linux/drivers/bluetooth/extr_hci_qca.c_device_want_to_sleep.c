
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int rx_ibs_state; int hci_ibs_lock; int ws_rx_vote_off; int workqueue; int ibs_recv_slps; } ;
struct hci_uart {struct qca_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*,int) ;
 int BT_ERR (char*,int) ;


 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void device_want_to_sleep(struct hci_uart *hu)
{
 unsigned long flags;
 struct qca_data *qca = hu->priv;

 BT_DBG("hu %p want to sleep in %d state", hu, qca->rx_ibs_state);

 spin_lock_irqsave(&qca->hci_ibs_lock, flags);

 qca->ibs_recv_slps++;

 switch (qca->rx_ibs_state) {
 case 128:

  qca->rx_ibs_state = 129;

  queue_work(qca->workqueue, &qca->ws_rx_vote_off);
  break;

 case 129:
  break;

 default:

  BT_ERR("Received HCI_IBS_SLEEP_IND in rx state %d",
         qca->rx_ibs_state);
  break;
 }

 spin_unlock_irqrestore(&qca->hci_ibs_lock, flags);
}
