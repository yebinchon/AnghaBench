
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct qca_data {int tx_ibs_state; int hci_ibs_lock; int wake_retrans_timer; int wake_retrans; int ibs_sent_wakes; struct hci_uart* hu; } ;
struct hci_uart {int dummy; } ;


 int BT_DBG (char*,struct hci_uart*,int) ;
 int BT_ERR (char*,...) ;



 int HCI_IBS_WAKE_IND ;
 int SINGLE_DEPTH_NESTING ;
 struct qca_data* from_timer (int ,struct timer_list*,int ) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 struct qca_data* qca ;
 int send_hci_ibs_cmd (int ,struct hci_uart*) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_retrans_timer ;

__attribute__((used)) static void hci_ibs_wake_retrans_timeout(struct timer_list *t)
{
 struct qca_data *qca = from_timer(qca, t, wake_retrans_timer);
 struct hci_uart *hu = qca->hu;
 unsigned long flags, retrans_delay;
 bool retransmit = 0;

 BT_DBG("hu %p wake retransmit timeout in %d state",
  hu, qca->tx_ibs_state);

 spin_lock_irqsave_nested(&qca->hci_ibs_lock,
     flags, SINGLE_DEPTH_NESTING);

 switch (qca->tx_ibs_state) {
 case 128:

  retransmit = 1;
  if (send_hci_ibs_cmd(HCI_IBS_WAKE_IND, hu) < 0) {
   BT_ERR("Failed to acknowledge device wake up");
   break;
  }
  qca->ibs_sent_wakes++;
  retrans_delay = msecs_to_jiffies(qca->wake_retrans);
  mod_timer(&qca->wake_retrans_timer, jiffies + retrans_delay);
  break;

 case 130:
 case 129:


 default:
  BT_ERR("Spurious timeout tx state %d", qca->tx_ibs_state);
  break;
 }

 spin_unlock_irqrestore(&qca->hci_ibs_lock, flags);

 if (retransmit)
  hci_uart_tx_wakeup(hu);
}
