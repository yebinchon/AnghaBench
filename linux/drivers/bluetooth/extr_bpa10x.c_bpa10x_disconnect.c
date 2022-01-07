
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct bpa10x_data {int * rx_skb; int hdev; } ;


 int BT_DBG (char*,struct usb_interface*) ;
 int hci_free_dev (int ) ;
 int hci_unregister_dev (int ) ;
 int kfree_skb (int ) ;
 struct bpa10x_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void bpa10x_disconnect(struct usb_interface *intf)
{
 struct bpa10x_data *data = usb_get_intfdata(intf);

 BT_DBG("intf %p", intf);

 if (!data)
  return;

 usb_set_intfdata(intf, ((void*)0));

 hci_unregister_dev(data->hdev);

 hci_free_dev(data->hdev);
 kfree_skb(data->rx_skb[0]);
 kfree_skb(data->rx_skb[1]);
}
