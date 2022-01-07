
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct qca_data {int tx_ibs_state; int hci_ibs_lock; int ws_tx_vote_off; int workqueue; int ibs_sent_slps; struct hci_uart* hu; } ;
struct hci_uart {int dummy; } ;


 int BT_DBG (char*,struct hci_uart*,int) ;
 int BT_ERR (char*,...) ;
 int HCI_IBS_SLEEP_IND ;



 int SINGLE_DEPTH_NESTING ;
 struct qca_data* from_timer (int ,struct timer_list*,int ) ;
 struct qca_data* qca ;
 int queue_work (int ,int *) ;
 int send_hci_ibs_cmd (int ,struct hci_uart*) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_idle_timer ;

__attribute__((used)) static void hci_ibs_tx_idle_timeout(struct timer_list *t)
{
 struct qca_data *qca = from_timer(qca, t, tx_idle_timer);
 struct hci_uart *hu = qca->hu;
 unsigned long flags;

 BT_DBG("hu %p idle timeout in %d state", hu, qca->tx_ibs_state);

 spin_lock_irqsave_nested(&qca->hci_ibs_lock,
     flags, SINGLE_DEPTH_NESTING);

 switch (qca->tx_ibs_state) {
 case 129:

  if (send_hci_ibs_cmd(HCI_IBS_SLEEP_IND, hu) < 0) {
   BT_ERR("Failed to send SLEEP to device");
   break;
  }
  qca->tx_ibs_state = 130;
  qca->ibs_sent_slps++;
  queue_work(qca->workqueue, &qca->ws_tx_vote_off);
  break;

 case 130:
 case 128:


 default:
  BT_ERR("Spurious timeout tx state %d", qca->tx_ibs_state);
  break;
 }

 spin_unlock_irqrestore(&qca->hci_ibs_lock, flags);
}
