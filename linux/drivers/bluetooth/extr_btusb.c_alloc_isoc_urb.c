
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_flags; } ;
struct sk_buff {void* dev; int len; int data; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {TYPE_1__* isoc_tx_ep; int udev; } ;
struct TYPE_2__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;


 int BTUSB_MAX_ISOC_FRAMES ;
 int ENODEV ;
 int ENOMEM ;
 struct urb* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int URB_ISO_ASAP ;
 int __fill_isoc_descriptor (struct urb*,int ,int ) ;
 int btusb_isoc_tx_complete ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int le16_to_cpu (int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (struct urb*,int ,unsigned int,int ,int ,int ,struct sk_buff*,int ) ;
 unsigned int usb_sndisocpipe (int ,int ) ;

__attribute__((used)) static struct urb *alloc_isoc_urb(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct urb *urb;
 unsigned int pipe;

 if (!data->isoc_tx_ep)
  return ERR_PTR(-ENODEV);

 urb = usb_alloc_urb(BTUSB_MAX_ISOC_FRAMES, GFP_KERNEL);
 if (!urb)
  return ERR_PTR(-ENOMEM);

 pipe = usb_sndisocpipe(data->udev, data->isoc_tx_ep->bEndpointAddress);

 usb_fill_int_urb(urb, data->udev, pipe,
    skb->data, skb->len, btusb_isoc_tx_complete,
    skb, data->isoc_tx_ep->bInterval);

 urb->transfer_flags = URB_ISO_ASAP;

 __fill_isoc_descriptor(urb, skb->len,
          le16_to_cpu(data->isoc_tx_ep->wMaxPacketSize));

 skb->dev = (void *)hdev;

 return urb;
}
