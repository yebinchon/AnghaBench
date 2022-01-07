
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct hci_dev {int dummy; } ;


 scalar_t__ QCA_DEBUG_HANDLE ;
 scalar_t__ get_unaligned_le16 (int ) ;
 int hci_recv_diag (struct hci_dev*,struct sk_buff*) ;
 int hci_recv_frame (struct hci_dev*,struct sk_buff*) ;

__attribute__((used)) static int qca_recv_acl_data(struct hci_dev *hdev, struct sk_buff *skb)
{





 if (get_unaligned_le16(skb->data) == QCA_DEBUG_HANDLE)
  return hci_recv_diag(hdev, skb);

 return hci_recv_frame(hdev, skb);
}
