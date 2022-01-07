
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wLength; scalar_t__ wValue; scalar_t__ wIndex; int bRequest; int bRequestType; } ;
struct urb {int dummy; } ;
struct sk_buff {void* dev; int len; int data; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int udev; int cmdreq; int cmdreq_type; } ;


 int ENOMEM ;
 struct urb* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int __cpu_to_le16 (int ) ;
 int btusb_tx_complete ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,int ,unsigned int,void*,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 unsigned int usb_sndctrlpipe (int ,int) ;

__attribute__((used)) static struct urb *alloc_ctrl_urb(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct usb_ctrlrequest *dr;
 struct urb *urb;
 unsigned int pipe;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return ERR_PTR(-ENOMEM);

 dr = kmalloc(sizeof(*dr), GFP_KERNEL);
 if (!dr) {
  usb_free_urb(urb);
  return ERR_PTR(-ENOMEM);
 }

 dr->bRequestType = data->cmdreq_type;
 dr->bRequest = data->cmdreq;
 dr->wIndex = 0;
 dr->wValue = 0;
 dr->wLength = __cpu_to_le16(skb->len);

 pipe = usb_sndctrlpipe(data->udev, 0x00);

 usb_fill_control_urb(urb, data->udev, pipe, (void *)dr,
        skb->data, skb->len, btusb_tx_complete, skb);

 skb->dev = (void *)hdev;

 return urb;
}
