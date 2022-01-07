
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_ctrlrequest {int wLength; int wValue; int wIndex; int bRequest; int bRequestType; } ;
struct urb {int setup_packet; } ;
struct sk_buff {int len; int data; void* dev; } ;
struct TYPE_2__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int name; } ;
struct bpa10x_data {int tx_anchor; int udev; } ;


 int BT_DBG (char*,int ) ;
 int EILSEQ ;
 int ENOMEM ;
 int GFP_KERNEL ;



 int USB_TYPE_VENDOR ;
 int __cpu_to_le16 (int ) ;
 int bpa10x_tx_complete ;
 int bt_dev_err (struct hci_dev*,char*,struct urb*) ;
 struct bpa10x_data* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree (int ) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,int ,int ,int ,struct sk_buff*) ;
 int usb_fill_control_urb (struct urb*,int ,unsigned int,void*,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 unsigned int usb_sndbulkpipe (int ,int) ;
 unsigned int usb_sndctrlpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int bpa10x_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct bpa10x_data *data = hci_get_drvdata(hdev);
 struct usb_ctrlrequest *dr;
 struct urb *urb;
 unsigned int pipe;
 int err;

 BT_DBG("%s", hdev->name);

 skb->dev = (void *) hdev;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return -ENOMEM;


 *(u8 *)skb_push(skb, 1) = hci_skb_pkt_type(skb);

 switch (hci_skb_pkt_type(skb)) {
 case 129:
  dr = kmalloc(sizeof(*dr), GFP_KERNEL);
  if (!dr) {
   usb_free_urb(urb);
   return -ENOMEM;
  }

  dr->bRequestType = USB_TYPE_VENDOR;
  dr->bRequest = 0;
  dr->wIndex = 0;
  dr->wValue = 0;
  dr->wLength = __cpu_to_le16(skb->len);

  pipe = usb_sndctrlpipe(data->udev, 0x00);

  usb_fill_control_urb(urb, data->udev, pipe, (void *) dr,
    skb->data, skb->len, bpa10x_tx_complete, skb);

  hdev->stat.cmd_tx++;
  break;

 case 130:
  pipe = usb_sndbulkpipe(data->udev, 0x02);

  usb_fill_bulk_urb(urb, data->udev, pipe,
    skb->data, skb->len, bpa10x_tx_complete, skb);

  hdev->stat.acl_tx++;
  break;

 case 128:
  pipe = usb_sndbulkpipe(data->udev, 0x02);

  usb_fill_bulk_urb(urb, data->udev, pipe,
    skb->data, skb->len, bpa10x_tx_complete, skb);

  hdev->stat.sco_tx++;
  break;

 default:
  usb_free_urb(urb);
  return -EILSEQ;
 }

 usb_anchor_urb(urb, &data->tx_anchor);

 err = usb_submit_urb(urb, GFP_KERNEL);
 if (err < 0) {
  bt_dev_err(hdev, "urb %p submission failed", urb);
  kfree(urb->setup_packet);
  usb_unanchor_urb(urb);
 }

 usb_free_urb(urb);

 return err;
}
