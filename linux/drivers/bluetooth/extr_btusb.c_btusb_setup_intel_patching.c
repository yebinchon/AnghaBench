
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct hci_event_hdr {int plen; int evt; } ;
struct hci_dev {int dummy; } ;
struct hci_command_hdr {int plen; int opcode; } ;
struct firmware {int size; int const* data; } ;


 int EFAULT ;
 int EINVAL ;
 int HCI_COMMAND_HDR_SIZE ;
 int HCI_EVENT_HDR_SIZE ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync_ev (struct hci_dev*,int,int,int const*,int ,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int const*,int) ;

__attribute__((used)) static int btusb_setup_intel_patching(struct hci_dev *hdev,
          const struct firmware *fw,
          const u8 **fw_ptr, int *disable_patch)
{
 struct sk_buff *skb;
 struct hci_command_hdr *cmd;
 const u8 *cmd_param;
 struct hci_event_hdr *evt = ((void*)0);
 const u8 *evt_param = ((void*)0);
 int remain = fw->size - (*fw_ptr - fw->data);
 if (remain > HCI_COMMAND_HDR_SIZE && *fw_ptr[0] != 0x01) {
  bt_dev_err(hdev, "Intel fw corrupted: invalid cmd read");
  return -EINVAL;
 }
 (*fw_ptr)++;
 remain--;

 cmd = (struct hci_command_hdr *)(*fw_ptr);
 *fw_ptr += sizeof(*cmd);
 remain -= sizeof(*cmd);




 if (remain < cmd->plen) {
  bt_dev_err(hdev, "Intel fw corrupted: invalid cmd len");
  return -EFAULT;
 }







 if (*disable_patch && le16_to_cpu(cmd->opcode) == 0xfc8e)
  *disable_patch = 0;

 cmd_param = *fw_ptr;
 *fw_ptr += cmd->plen;
 remain -= cmd->plen;
 while (remain > HCI_EVENT_HDR_SIZE && *fw_ptr[0] == 0x02) {
  (*fw_ptr)++;
  remain--;

  evt = (struct hci_event_hdr *)(*fw_ptr);
  *fw_ptr += sizeof(*evt);
  remain -= sizeof(*evt);

  if (remain < evt->plen) {
   bt_dev_err(hdev, "Intel fw corrupted: invalid evt len");
   return -EFAULT;
  }

  evt_param = *fw_ptr;
  *fw_ptr += evt->plen;
  remain -= evt->plen;
 }





 if (!evt || !evt_param || remain < 0) {
  bt_dev_err(hdev, "Intel fw corrupted: invalid evt read");
  return -EFAULT;
 }

 skb = __hci_cmd_sync_ev(hdev, le16_to_cpu(cmd->opcode), cmd->plen,
    cmd_param, evt->evt, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "sending Intel patch command (0x%4.4x) failed (%ld)",
      cmd->opcode, PTR_ERR(skb));
  return PTR_ERR(skb);
 }





 if (skb->len != evt->plen) {
  bt_dev_err(hdev, "mismatch event length (opcode 0x%4.4x)",
      le16_to_cpu(cmd->opcode));
  kfree_skb(skb);
  return -EFAULT;
 }

 if (memcmp(skb->data, evt_param, evt->plen)) {
  bt_dev_err(hdev, "mismatch event parameter (opcode 0x%4.4x)",
      le16_to_cpu(cmd->opcode));
  kfree_skb(skb);
  return -EFAULT;
 }
 kfree_skb(skb);

 return 0;
}
