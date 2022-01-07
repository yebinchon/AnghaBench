
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int byte_tx; int cmd_tx; int err_tx; int acl_tx; } ;
struct hci_dev {TYPE_1__ stat; } ;
struct btqcomsmd {int cmd_channel; int acl_channel; } ;


 int EILSEQ ;


 struct btqcomsmd* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int rpmsg_send (int ,int ,int ) ;

__attribute__((used)) static int btqcomsmd_send(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct btqcomsmd *btq = hci_get_drvdata(hdev);
 int ret;

 switch (hci_skb_pkt_type(skb)) {
 case 129:
  ret = rpmsg_send(btq->acl_channel, skb->data, skb->len);
  if (ret) {
   hdev->stat.err_tx++;
   break;
  }
  hdev->stat.acl_tx++;
  hdev->stat.byte_tx += skb->len;
  break;
 case 128:
  ret = rpmsg_send(btq->cmd_channel, skb->data, skb->len);
  if (ret) {
   hdev->stat.err_tx++;
   break;
  }
  hdev->stat.cmd_tx++;
  hdev->stat.byte_tx += skb->len;
  break;
 default:
  ret = -EILSEQ;
  break;
 }

 if (!ret)
  kfree_skb(skb);

 return ret;
}
