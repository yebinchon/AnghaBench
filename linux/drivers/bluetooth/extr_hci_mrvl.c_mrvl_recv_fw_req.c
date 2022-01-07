
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct mrvl_data {int flags; int tx_len; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct hci_mrvl_pkt {int lhs; int rhs; } ;
struct hci_dev {int dummy; } ;


 int EINVAL ;
 int MRVL_ACK ;
 int MRVL_NAK ;
 int STATE_FW_REQ_PENDING ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int clear_bit (int ,int *) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int) ;
 int mrvl_send_ack (struct hci_uart*,int ) ;
 int smp_mb__after_atomic () ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static int mrvl_recv_fw_req(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_mrvl_pkt *pkt = (void *)skb->data;
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct mrvl_data *mrvl = hu->priv;
 int ret = 0;

 if ((pkt->lhs ^ pkt->rhs) != 0xffff) {
  bt_dev_err(hdev, "Corrupted mrvl header");
  mrvl_send_ack(hu, MRVL_NAK);
  ret = -EINVAL;
  goto done;
 }
 mrvl_send_ack(hu, MRVL_ACK);

 if (!test_bit(STATE_FW_REQ_PENDING, &mrvl->flags)) {
  bt_dev_err(hdev, "Received unexpected firmware request");
  ret = -EINVAL;
  goto done;
 }

 mrvl->tx_len = le16_to_cpu(pkt->lhs);

 clear_bit(STATE_FW_REQ_PENDING, &mrvl->flags);
 smp_mb__after_atomic();
 wake_up_bit(&mrvl->flags, STATE_FW_REQ_PENDING);

done:
 kfree_skb(skb);
 return ret;
}
