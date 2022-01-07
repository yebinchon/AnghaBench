
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_serdev {int oper_speed; int init_speed; int bt_en; int btsoc_type; } ;
struct qca_data {int wake_retrans; int tx_idle_delay; int tx_idle_timer; int wake_retrans_timer; int rx_skb; int workqueue; int vote_last_jif; int rx_ibs_state; int tx_ibs_state; int drop_ev_comp; struct hci_uart* hu; int ws_tx_vote_off; int ws_rx_vote_off; int ws_awake_device; int ws_awake_rx; int hci_ibs_lock; int tx_wait_q; int txq; } ;
struct hci_uart {struct qca_data* priv; int oper_speed; int init_speed; scalar_t__ serdev; } ;


 int BT_DBG (char*,struct hci_uart*,...) ;
 int BT_ERR (char*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int HCI_IBS_RX_ASLEEP ;
 int HCI_IBS_TX_ASLEEP ;
 int IBS_TX_IDLE_TIMEOUT_MS ;
 int IBS_WAKE_RETRANS_TIMEOUT_MS ;
 int INIT_WORK (int *,int ) ;
 int alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int hci_ibs_tx_idle_timeout ;
 int hci_ibs_wake_retrans_timeout ;
 int hci_uart_has_flow_control (struct hci_uart*) ;
 int init_completion (int *) ;
 int jiffies ;
 int kfree (struct qca_data*) ;
 int kfree_skb (int ) ;
 struct qca_data* kzalloc (int,int ) ;
 int msleep (int) ;
 int qca_is_wcn399x (int ) ;
 int qca_power_setup (struct hci_uart*,int) ;
 int qca_wq_awake_device ;
 int qca_wq_awake_rx ;
 int qca_wq_serial_rx_clock_vote_off ;
 int qca_wq_serial_tx_clock_vote_off ;
 struct qca_serdev* serdev_device_get_drvdata (scalar_t__) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int qca_open(struct hci_uart *hu)
{
 struct qca_serdev *qcadev;
 struct qca_data *qca;
 int ret;

 BT_DBG("hu %p qca_open", hu);

 if (!hci_uart_has_flow_control(hu))
  return -EOPNOTSUPP;

 qca = kzalloc(sizeof(struct qca_data), GFP_KERNEL);
 if (!qca)
  return -ENOMEM;

 skb_queue_head_init(&qca->txq);
 skb_queue_head_init(&qca->tx_wait_q);
 spin_lock_init(&qca->hci_ibs_lock);
 qca->workqueue = alloc_ordered_workqueue("qca_wq", 0);
 if (!qca->workqueue) {
  BT_ERR("QCA Workqueue not initialized properly");
  kfree(qca);
  return -ENOMEM;
 }

 INIT_WORK(&qca->ws_awake_rx, qca_wq_awake_rx);
 INIT_WORK(&qca->ws_awake_device, qca_wq_awake_device);
 INIT_WORK(&qca->ws_rx_vote_off, qca_wq_serial_rx_clock_vote_off);
 INIT_WORK(&qca->ws_tx_vote_off, qca_wq_serial_tx_clock_vote_off);

 qca->hu = hu;
 init_completion(&qca->drop_ev_comp);


 qca->tx_ibs_state = HCI_IBS_TX_ASLEEP;
 qca->rx_ibs_state = HCI_IBS_RX_ASLEEP;

 qca->vote_last_jif = jiffies;

 hu->priv = qca;

 if (hu->serdev) {

  qcadev = serdev_device_get_drvdata(hu->serdev);
  if (!qca_is_wcn399x(qcadev->btsoc_type)) {
   gpiod_set_value_cansleep(qcadev->bt_en, 1);

   msleep(150);
  } else {
   hu->init_speed = qcadev->init_speed;
   hu->oper_speed = qcadev->oper_speed;
   ret = qca_power_setup(hu, 1);
   if (ret) {
    destroy_workqueue(qca->workqueue);
    kfree_skb(qca->rx_skb);
    hu->priv = ((void*)0);
    kfree(qca);
    return ret;
   }
  }
 }

 timer_setup(&qca->wake_retrans_timer, hci_ibs_wake_retrans_timeout, 0);
 qca->wake_retrans = IBS_WAKE_RETRANS_TIMEOUT_MS;

 timer_setup(&qca->tx_idle_timer, hci_ibs_tx_idle_timeout, 0);
 qca->tx_idle_delay = IBS_TX_IDLE_TIMEOUT_MS;

 BT_DBG("HCI_UART_QCA open, tx_idle_delay=%u, wake_retrans=%u",
        qca->tx_idle_delay, qca->wake_retrans);

 return 0;
}
