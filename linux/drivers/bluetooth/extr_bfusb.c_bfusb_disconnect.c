
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct hci_dev {int dummy; } ;
struct bfusb_data {struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct usb_interface*) ;
 int bfusb_close (struct hci_dev*) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 struct bfusb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void bfusb_disconnect(struct usb_interface *intf)
{
 struct bfusb_data *data = usb_get_intfdata(intf);
 struct hci_dev *hdev = data->hdev;

 BT_DBG("intf %p", intf);

 if (!hdev)
  return;

 usb_set_intfdata(intf, ((void*)0));

 bfusb_close(hdev);

 hci_unregister_dev(hdev);
 hci_free_dev(hdev);
}
