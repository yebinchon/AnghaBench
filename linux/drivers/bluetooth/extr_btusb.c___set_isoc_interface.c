
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int isoc_altsetting; struct usb_endpoint_descriptor* isoc_rx_ep; struct usb_endpoint_descriptor* isoc_tx_ep; int isoc_ifnum; int udev; struct usb_interface* isoc; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 scalar_t__ usb_endpoint_is_isoc_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_isoc_out (struct usb_endpoint_descriptor*) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static inline int __set_isoc_interface(struct hci_dev *hdev, int altsetting)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct usb_interface *intf = data->isoc;
 struct usb_endpoint_descriptor *ep_desc;
 int i, err;

 if (!data->isoc)
  return -ENODEV;

 err = usb_set_interface(data->udev, data->isoc_ifnum, altsetting);
 if (err < 0) {
  bt_dev_err(hdev, "setting interface failed (%d)", -err);
  return err;
 }

 data->isoc_altsetting = altsetting;

 data->isoc_tx_ep = ((void*)0);
 data->isoc_rx_ep = ((void*)0);

 for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
  ep_desc = &intf->cur_altsetting->endpoint[i].desc;

  if (!data->isoc_tx_ep && usb_endpoint_is_isoc_out(ep_desc)) {
   data->isoc_tx_ep = ep_desc;
   continue;
  }

  if (!data->isoc_rx_ep && usb_endpoint_is_isoc_in(ep_desc)) {
   data->isoc_rx_ep = ep_desc;
   continue;
  }
 }

 if (!data->isoc_tx_ep || !data->isoc_rx_ep) {
  bt_dev_err(hdev, "invalid SCO descriptors");
  return -ENODEV;
 }

 return 0;
}
