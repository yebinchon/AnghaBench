
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_data {int flags; int busy_work; } ;
struct hci_uart {struct intel_data* priv; } ;
struct hci_dev {int dummy; } ;


 int STATE_TX_ACTIVE ;
 int bt_dev_dbg (struct hci_dev*,char*,int) ;
 int clear_bit (int ,int *) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void intel_recv_lpm_notify(struct hci_dev *hdev, int value)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct intel_data *intel = hu->priv;

 bt_dev_dbg(hdev, "TX idle notification (%d)", value);

 if (value) {
  set_bit(STATE_TX_ACTIVE, &intel->flags);
  schedule_work(&intel->busy_work);
 } else {
  clear_bit(STATE_TX_ACTIVE, &intel->flags);
 }
}
