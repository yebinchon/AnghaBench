
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int name; } ;


 int BT_DBG (char*,int ) ;
 int EILSEQ ;
 int ENODEV ;



 int IS_ERR (struct urb*) ;
 int PTR_ERR (struct urb*) ;
 int SCO_LINK ;
 struct urb* alloc_bulk_urb (struct hci_dev*,struct sk_buff*) ;
 struct urb* alloc_ctrl_urb (struct hci_dev*,struct sk_buff*) ;
 struct urb* alloc_isoc_urb (struct hci_dev*,struct sk_buff*) ;
 int hci_conn_num (struct hci_dev*,int ) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int submit_or_queue_tx_urb (struct hci_dev*,struct urb*) ;
 int submit_tx_urb (struct hci_dev*,struct urb*) ;

__attribute__((used)) static int btusb_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct urb *urb;

 BT_DBG("%s", hdev->name);

 switch (hci_skb_pkt_type(skb)) {
 case 129:
  urb = alloc_ctrl_urb(hdev, skb);
  if (IS_ERR(urb))
   return PTR_ERR(urb);

  hdev->stat.cmd_tx++;
  return submit_or_queue_tx_urb(hdev, urb);

 case 130:
  urb = alloc_bulk_urb(hdev, skb);
  if (IS_ERR(urb))
   return PTR_ERR(urb);

  hdev->stat.acl_tx++;
  return submit_or_queue_tx_urb(hdev, urb);

 case 128:
  if (hci_conn_num(hdev, SCO_LINK) < 1)
   return -ENODEV;

  urb = alloc_isoc_urb(hdev, skb);
  if (IS_ERR(urb))
   return PTR_ERR(urb);

  hdev->stat.sco_tx++;
  return submit_tx_urb(hdev, urb);
 }

 return -EILSEQ;
}
