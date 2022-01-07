
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct sk_buff {int len; int data; scalar_t__ cb; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int pending_tx; int pending_q; TYPE_1__* hdev; int udev; int bulk_out_ep; } ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,struct bfusb_data*,struct sk_buff*,int ) ;
 int BT_ERR (char*,int ,struct urb*,int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int atomic_inc (int *) ;
 struct urb* bfusb_get_completed (struct bfusb_data*) ;
 int bfusb_tx_complete ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int bfusb_send_bulk(struct bfusb_data *data, struct sk_buff *skb)
{
 struct bfusb_data_scb *scb = (void *) skb->cb;
 struct urb *urb = bfusb_get_completed(data);
 int err, pipe;

 BT_DBG("bfusb %p skb %p len %d", data, skb, skb->len);

 if (!urb) {
  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb)
   return -ENOMEM;
 }

 pipe = usb_sndbulkpipe(data->udev, data->bulk_out_ep);

 usb_fill_bulk_urb(urb, data->udev, pipe, skb->data, skb->len,
   bfusb_tx_complete, skb);

 scb->urb = urb;

 skb_queue_tail(&data->pending_q, skb);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err) {
  BT_ERR("%s bulk tx submit failed urb %p err %d",
     data->hdev->name, urb, err);
  skb_unlink(skb, &data->pending_q);
  usb_free_urb(urb);
 } else
  atomic_inc(&data->pending_tx);

 return err;
}
