
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct hci_dev {int quirks; int set_diag; int send; int setup; int flush; int close; int open; int bus; } ;
struct bpa10x_data {struct hci_dev* hdev; int rx_anchor; int tx_anchor; int udev; } ;
struct TYPE_3__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int BT_DBG (char*,struct usb_interface*,struct usb_device_id const*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_QUIRK_RESET_ON_CLOSE ;
 int HCI_USB ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int bpa10x_close ;
 int bpa10x_flush ;
 int bpa10x_open ;
 int bpa10x_send_frame ;
 int bpa10x_set_diag ;
 int bpa10x_setup ;
 struct bpa10x_data* devm_kzalloc (int *,int,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct bpa10x_data*) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int set_bit (int ,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct bpa10x_data*) ;

__attribute__((used)) static int bpa10x_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 struct bpa10x_data *data;
 struct hci_dev *hdev;
 int err;

 BT_DBG("intf %p id %p", intf, id);

 if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
  return -ENODEV;

 data = devm_kzalloc(&intf->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->udev = interface_to_usbdev(intf);

 init_usb_anchor(&data->tx_anchor);
 init_usb_anchor(&data->rx_anchor);

 hdev = hci_alloc_dev();
 if (!hdev)
  return -ENOMEM;

 hdev->bus = HCI_USB;
 hci_set_drvdata(hdev, data);

 data->hdev = hdev;

 SET_HCIDEV_DEV(hdev, &intf->dev);

 hdev->open = bpa10x_open;
 hdev->close = bpa10x_close;
 hdev->flush = bpa10x_flush;
 hdev->setup = bpa10x_setup;
 hdev->send = bpa10x_send_frame;
 hdev->set_diag = bpa10x_set_diag;

 set_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

 err = hci_register_dev(hdev);
 if (err < 0) {
  hci_free_dev(hdev);
  return err;
 }

 usb_set_intfdata(intf, data);

 return 0;
}
