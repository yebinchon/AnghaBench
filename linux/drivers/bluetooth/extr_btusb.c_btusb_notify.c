
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct btusb_data {scalar_t__ sco_num; int work; } ;


 int BT_DBG (char*,int ,unsigned int) ;
 int SCO_LINK ;
 scalar_t__ hci_conn_num (struct hci_dev*,int ) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void btusb_notify(struct hci_dev *hdev, unsigned int evt)
{
 struct btusb_data *data = hci_get_drvdata(hdev);

 BT_DBG("%s evt %d", hdev->name, evt);

 if (hci_conn_num(hdev, SCO_LINK) != data->sco_num) {
  data->sco_num = hci_conn_num(hdev, SCO_LINK);
  schedule_work(&data->work);
 }
}
