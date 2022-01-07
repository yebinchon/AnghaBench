
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct sk_buff {void* dev; int len; int data; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int udev; TYPE_1__* bulk_tx_ep; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int ENODEV ;
 int ENOMEM ;
 struct urb* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int btusb_tx_complete ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,int ,int ,int ,struct sk_buff*) ;
 unsigned int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static struct urb *alloc_bulk_urb(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct urb *urb;
 unsigned int pipe;

 if (!data->bulk_tx_ep)
  return ERR_PTR(-ENODEV);

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return ERR_PTR(-ENOMEM);

 pipe = usb_sndbulkpipe(data->udev, data->bulk_tx_ep->bEndpointAddress);

 usb_fill_bulk_urb(urb, data->udev, pipe,
     skb->data, skb->len, btusb_tx_complete, skb);

 skb->dev = (void *)hdev;

 return urb;
}
