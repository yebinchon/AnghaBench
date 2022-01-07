
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int completed_q; int pending_q; } ;


 int BT_DBG (char*,struct bfusb_data*) ;
 struct urb* bfusb_get_completed (struct bfusb_data*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void bfusb_unlink_urbs(struct bfusb_data *data)
{
 struct sk_buff *skb;
 struct urb *urb;

 BT_DBG("bfusb %p", data);

 while ((skb = skb_dequeue(&data->pending_q))) {
  urb = ((struct bfusb_data_scb *) skb->cb)->urb;
  usb_kill_urb(urb);
  skb_queue_tail(&data->completed_q, skb);
 }

 while ((urb = bfusb_get_completed(data)))
  usb_free_urb(urb);
}
