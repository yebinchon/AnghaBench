
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int actual_length; int transfer_buffer; int pipe; int status; struct hci_dev* context; } ;
struct TYPE_2__ {int err_rx; } ;
struct hci_dev {TYPE_1__ stat; int flags; int name; } ;
struct bpa10x_data {int rx_anchor; int ** rx_skb; } ;


 int ARRAY_SIZE (int ) ;
 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int GFP_ATOMIC ;
 int HCI_RUNNING ;
 scalar_t__ IS_ERR (int *) ;
 int bpa10x_recv_pkts ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int * h4_recv_buf (struct hci_dev*,int *,int ,int ,int ,int ) ;
 struct bpa10x_data* hci_get_drvdata (struct hci_dev*) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_pipebulk (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void bpa10x_rx_complete(struct urb *urb)
{
 struct hci_dev *hdev = urb->context;
 struct bpa10x_data *data = hci_get_drvdata(hdev);
 int err;

 BT_DBG("%s urb %p status %d count %d", hdev->name,
     urb, urb->status, urb->actual_length);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return;

 if (urb->status == 0) {
  bool idx = usb_pipebulk(urb->pipe);

  data->rx_skb[idx] = h4_recv_buf(hdev, data->rx_skb[idx],
      urb->transfer_buffer,
      urb->actual_length,
      bpa10x_recv_pkts,
      ARRAY_SIZE(bpa10x_recv_pkts));
  if (IS_ERR(data->rx_skb[idx])) {
   bt_dev_err(hdev, "corrupted event packet");
   hdev->stat.err_rx++;
   data->rx_skb[idx] = ((void*)0);
  }
 }

 usb_anchor_urb(urb, &data->rx_anchor);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {
  bt_dev_err(hdev, "urb %p failed to resubmit (%d)", urb, -err);
  usb_unanchor_urb(urb);
 }
}
