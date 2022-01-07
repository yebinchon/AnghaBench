
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_serdev {int bt_en; int btsoc_type; } ;
struct qca_data {int rx_skb; int * hu; int workqueue; int wake_retrans_timer; int tx_idle_timer; int txq; int tx_wait_q; } ;
struct hci_uart {struct qca_data* priv; scalar_t__ serdev; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int HCI_IBS_VOTE_STATS_UPDATE ;
 int del_timer (int *) ;
 int destroy_workqueue (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int kfree (struct qca_data*) ;
 int kfree_skb (int ) ;
 scalar_t__ qca_is_wcn399x (int ) ;
 int qca_power_shutdown (struct hci_uart*) ;
 struct qca_serdev* serdev_device_get_drvdata (scalar_t__) ;
 int serial_clock_vote (int ,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int qca_close(struct hci_uart *hu)
{
 struct qca_serdev *qcadev;
 struct qca_data *qca = hu->priv;

 BT_DBG("hu %p qca close", hu);

 serial_clock_vote(HCI_IBS_VOTE_STATS_UPDATE, hu);

 skb_queue_purge(&qca->tx_wait_q);
 skb_queue_purge(&qca->txq);
 del_timer(&qca->tx_idle_timer);
 del_timer(&qca->wake_retrans_timer);
 destroy_workqueue(qca->workqueue);
 qca->hu = ((void*)0);

 if (hu->serdev) {
  qcadev = serdev_device_get_drvdata(hu->serdev);
  if (qca_is_wcn399x(qcadev->btsoc_type))
   qca_power_shutdown(hu);
  else
   gpiod_set_value_cansleep(qcadev->bt_en, 0);

 }

 kfree_skb(qca->rx_skb);

 hu->priv = ((void*)0);

 kfree(qca);

 return 0;
}
