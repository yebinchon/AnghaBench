
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_command_hdr {size_t plen; int opcode; } ;
struct firmware {size_t size; int * data; } ;


 int EINVAL ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,size_t,int const*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int msleep (int) ;

int btbcm_patchram(struct hci_dev *hdev, const struct firmware *fw)
{
 const struct hci_command_hdr *cmd;
 const u8 *fw_ptr;
 size_t fw_size;
 struct sk_buff *skb;
 u16 opcode;
 int err = 0;


 skb = __hci_cmd_sync(hdev, 0xfc2e, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "BCM: Download Minidrv command failed (%d)",
      err);
  goto done;
 }
 kfree_skb(skb);


 msleep(50);

 fw_ptr = fw->data;
 fw_size = fw->size;

 while (fw_size >= sizeof(*cmd)) {
  const u8 *cmd_param;

  cmd = (struct hci_command_hdr *)fw_ptr;
  fw_ptr += sizeof(*cmd);
  fw_size -= sizeof(*cmd);

  if (fw_size < cmd->plen) {
   bt_dev_err(hdev, "BCM: Patch is corrupted");
   err = -EINVAL;
   goto done;
  }

  cmd_param = fw_ptr;
  fw_ptr += cmd->plen;
  fw_size -= cmd->plen;

  opcode = le16_to_cpu(cmd->opcode);

  skb = __hci_cmd_sync(hdev, opcode, cmd->plen, cmd_param,
         HCI_INIT_TIMEOUT);
  if (IS_ERR(skb)) {
   err = PTR_ERR(skb);
   bt_dev_err(hdev, "BCM: Patch command %04x failed (%d)",
       opcode, err);
   goto done;
  }
  kfree_skb(skb);
 }


 msleep(250);

done:
 return err;
}
