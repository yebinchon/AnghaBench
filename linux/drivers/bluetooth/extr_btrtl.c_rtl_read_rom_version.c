
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl_rom_version_evt {int version; int status; } ;
struct hci_dev {int dummy; } ;


 int EIO ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int ,int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rtl_dev_err (struct hci_dev*,char*,...) ;
 int rtl_dev_info (struct hci_dev*,char*,int ,int ) ;

__attribute__((used)) static int rtl_read_rom_version(struct hci_dev *hdev, u8 *version)
{
 struct rtl_rom_version_evt *rom_version;
 struct sk_buff *skb;


 skb = __hci_cmd_sync(hdev, 0xfc6d, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  rtl_dev_err(hdev, "Read ROM version failed (%ld)",
       PTR_ERR(skb));
  return PTR_ERR(skb);
 }

 if (skb->len != sizeof(*rom_version)) {
  rtl_dev_err(hdev, "version event length mismatch");
  kfree_skb(skb);
  return -EIO;
 }

 rom_version = (struct rtl_rom_version_evt *)skb->data;
 rtl_dev_info(hdev, "rom_version status=%x version=%x",
       rom_version->status, rom_version->version);

 *version = rom_version->version;

 kfree_skb(skb);
 return 0;
}
