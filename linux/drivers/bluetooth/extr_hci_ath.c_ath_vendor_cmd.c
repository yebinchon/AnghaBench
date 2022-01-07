
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
struct ath_vendor_cmd {size_t len; int data; int index; int opcode; } ;


 int EINVAL ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,size_t,struct ath_vendor_cmd*,int ) ;
 int cpu_to_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,void const*,size_t) ;

__attribute__((used)) static int ath_vendor_cmd(struct hci_dev *hdev, uint8_t opcode, uint16_t index,
     const void *data, size_t dlen)
{
 struct sk_buff *skb;
 struct ath_vendor_cmd cmd;

 if (dlen > sizeof(cmd.data))
  return -EINVAL;

 cmd.opcode = opcode;
 cmd.index = cpu_to_le16(index);
 cmd.len = dlen;
 memcpy(cmd.data, data, dlen);

 skb = __hci_cmd_sync(hdev, 0xfc0b, dlen + 4, &cmd, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb))
  return PTR_ERR(skb);
 kfree_skb(skb);

 return 0;
}
