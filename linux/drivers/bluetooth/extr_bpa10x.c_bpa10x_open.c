
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct bpa10x_data {int rx_anchor; } ;


 int BT_DBG (char*,int ) ;
 int bpa10x_submit_bulk_urb (struct hci_dev*) ;
 int bpa10x_submit_intr_urb (struct hci_dev*) ;
 struct bpa10x_data* hci_get_drvdata (struct hci_dev*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int bpa10x_open(struct hci_dev *hdev)
{
 struct bpa10x_data *data = hci_get_drvdata(hdev);
 int err;

 BT_DBG("%s", hdev->name);

 err = bpa10x_submit_intr_urb(hdev);
 if (err < 0)
  goto error;

 err = bpa10x_submit_bulk_urb(hdev);
 if (err < 0)
  goto error;

 return 0;

error:
 usb_kill_anchored_urbs(&data->rx_anchor);

 return err;
}
