
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;
struct hci_dev {int dummy; } ;
struct hci_command_hdr {scalar_t__ plen; int opcode; } ;
struct firmware {int size; int const* data; } ;


 int bt_dev_dbg (struct hci_dev*,char*,int) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int btintel_secure_send (struct hci_dev*,int,int,int const*) ;
 int get_unaligned_le32 (int const*) ;
 int le16_to_cpu (int ) ;

int btintel_download_firmware(struct hci_dev *hdev, const struct firmware *fw,
         u32 *boot_param)
{
 int err;
 const u8 *fw_ptr;
 u32 frag_len;




 err = btintel_secure_send(hdev, 0x00, 128, fw->data);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to send firmware header (%d)", err);
  goto done;
 }




 err = btintel_secure_send(hdev, 0x03, 256, fw->data + 128);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to send firmware pkey (%d)", err);
  goto done;
 }




 err = btintel_secure_send(hdev, 0x02, 256, fw->data + 388);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to send firmware signature (%d)", err);
  goto done;
 }

 fw_ptr = fw->data + 644;
 frag_len = 0;

 while (fw_ptr - fw->data < fw->size) {
  struct hci_command_hdr *cmd = (void *)(fw_ptr + frag_len);






  if (le16_to_cpu(cmd->opcode) == 0xfc0e) {



   *boot_param = get_unaligned_le32(fw_ptr + sizeof(*cmd));

   bt_dev_dbg(hdev, "boot_param=0x%x", *boot_param);
  }

  frag_len += sizeof(*cmd) + cmd->plen;
  if (!(frag_len % 4)) {
   err = btintel_secure_send(hdev, 0x01, frag_len, fw_ptr);
   if (err < 0) {
    bt_dev_err(hdev,
        "Failed to send firmware data (%d)",
        err);
    goto done;
   }

   fw_ptr += frag_len;
   frag_len = 0;
  }
 }

done:
 return err;
}
