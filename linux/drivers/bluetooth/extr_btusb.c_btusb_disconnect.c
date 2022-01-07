
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {scalar_t__ reset_gpio; TYPE_1__* udev; scalar_t__ oob_wake_irq; struct usb_interface* isoc; struct usb_interface* intf; struct usb_interface* diag; struct hci_dev* hdev; } ;
struct TYPE_2__ {int dev; } ;


 int BT_DBG (char*,struct usb_interface*) ;
 int btusb_driver ;
 int device_init_wakeup (int *,int) ;
 int gpiod_put (scalar_t__) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct btusb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void btusb_disconnect(struct usb_interface *intf)
{
 struct btusb_data *data = usb_get_intfdata(intf);
 struct hci_dev *hdev;

 BT_DBG("intf %p", intf);

 if (!data)
  return;

 hdev = data->hdev;
 usb_set_intfdata(data->intf, ((void*)0));

 if (data->isoc)
  usb_set_intfdata(data->isoc, ((void*)0));

 if (data->diag)
  usb_set_intfdata(data->diag, ((void*)0));

 hci_unregister_dev(hdev);

 if (intf == data->intf) {
  if (data->isoc)
   usb_driver_release_interface(&btusb_driver, data->isoc);
  if (data->diag)
   usb_driver_release_interface(&btusb_driver, data->diag);
 } else if (intf == data->isoc) {
  if (data->diag)
   usb_driver_release_interface(&btusb_driver, data->diag);
  usb_driver_release_interface(&btusb_driver, data->intf);
 } else if (intf == data->diag) {
  usb_driver_release_interface(&btusb_driver, data->intf);
  if (data->isoc)
   usb_driver_release_interface(&btusb_driver, data->isoc);
 }

 if (data->oob_wake_irq)
  device_init_wakeup(&data->udev->dev, 0);

 if (data->reset_gpio)
  gpiod_put(data->reset_gpio);

 hci_free_dev(hdev);
}
