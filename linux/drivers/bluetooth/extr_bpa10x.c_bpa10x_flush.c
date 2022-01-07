
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct bpa10x_data {int tx_anchor; } ;


 int BT_DBG (char*,int ) ;
 struct bpa10x_data* hci_get_drvdata (struct hci_dev*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int bpa10x_flush(struct hci_dev *hdev)
{
 struct bpa10x_data *data = hci_get_drvdata(hdev);

 BT_DBG("%s", hdev->name);

 usb_kill_anchored_urbs(&data->tx_anchor);

 return 0;
}
