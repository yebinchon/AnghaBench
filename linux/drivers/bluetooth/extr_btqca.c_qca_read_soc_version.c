
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rome_version {int rome_ver; int soc_id; int patch_ver; int product_id; } ;
struct hci_dev {int name; } ;
struct edl_event_hdr {scalar_t__ rtype; scalar_t__ data; int cresp; } ;


 int BT_DBG (char*,int ,int) ;
 scalar_t__ EDL_APP_VER_RES_EVT ;
 int EDL_CMD_REQ_RES_EVT ;
 int EDL_PATCH_CMD_LEN ;
 int EDL_PATCH_CMD_OPCODE ;
 char EDL_PATCH_VER_REQ_CMD ;
 int EILSEQ ;
 int EIO ;
 int HCI_EV_VENDOR ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync_ev (struct hci_dev*,int ,int ,char*,int ,int ) ;
 int bt_dev_dbg (struct hci_dev*,char*) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

int qca_read_soc_version(struct hci_dev *hdev, u32 *soc_version)
{
 struct sk_buff *skb;
 struct edl_event_hdr *edl;
 struct rome_version *ver;
 char cmd;
 int err = 0;

 bt_dev_dbg(hdev, "QCA Version Request");

 cmd = EDL_PATCH_VER_REQ_CMD;
 skb = __hci_cmd_sync_ev(hdev, EDL_PATCH_CMD_OPCODE, EDL_PATCH_CMD_LEN,
    &cmd, HCI_EV_VENDOR, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "Reading QCA version information failed (%d)",
      err);
  return err;
 }

 if (skb->len != sizeof(*edl) + sizeof(*ver)) {
  bt_dev_err(hdev, "QCA Version size mismatch len %d", skb->len);
  err = -EILSEQ;
  goto out;
 }

 edl = (struct edl_event_hdr *)(skb->data);
 if (!edl) {
  bt_dev_err(hdev, "QCA TLV with no header");
  err = -EILSEQ;
  goto out;
 }

 if (edl->cresp != EDL_CMD_REQ_RES_EVT ||
     edl->rtype != EDL_APP_VER_RES_EVT) {
  bt_dev_err(hdev, "QCA Wrong packet received %d %d", edl->cresp,
      edl->rtype);
  err = -EIO;
  goto out;
 }

 ver = (struct rome_version *)(edl->data);

 BT_DBG("%s: Product:0x%08x", hdev->name, le32_to_cpu(ver->product_id));
 BT_DBG("%s: Patch  :0x%08x", hdev->name, le16_to_cpu(ver->patch_ver));
 BT_DBG("%s: ROM    :0x%08x", hdev->name, le16_to_cpu(ver->rome_ver));
 BT_DBG("%s: SOC    :0x%08x", hdev->name, le32_to_cpu(ver->soc_id));





 *soc_version = (le32_to_cpu(ver->soc_id) << 16) |
   (le16_to_cpu(ver->rome_ver) & 0x0000ffff);
 if (*soc_version == 0)
  err = -EILSEQ;

out:
 kfree_skb(skb);
 if (err)
  bt_dev_err(hdev, "QCA Failed to get version (%d)", err);

 return err;
}
