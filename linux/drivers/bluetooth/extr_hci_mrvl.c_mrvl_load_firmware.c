
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mrvl_data {int tx_len; int rawq; int flags; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct hci_dev {int dev; } ;
struct firmware {int size; int * data; } ;
struct TYPE_2__ {int pkt_type; } ;


 int EINTR ;
 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int MRVL_RAW_DATA ;
 int STATE_FW_REQ_PENDING ;
 int TASK_INTERRUPTIBLE ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int bt_dev_dbg (struct hci_dev*,char*,int) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int bt_dev_info (struct hci_dev*,char*,...) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int msecs_to_jiffies (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int set_bit (int ,int *) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int wait_on_bit_timeout (int *,int ,int ,int ) ;

__attribute__((used)) static int mrvl_load_firmware(struct hci_dev *hdev, const char *name)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct mrvl_data *mrvl = hu->priv;
 const struct firmware *fw = ((void*)0);
 const u8 *fw_ptr, *fw_max;
 int err;

 err = request_firmware(&fw, name, &hdev->dev);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to load firmware file %s", name);
  return err;
 }

 fw_ptr = fw->data;
 fw_max = fw->data + fw->size;

 bt_dev_info(hdev, "Loading %s", name);

 set_bit(STATE_FW_REQ_PENDING, &mrvl->flags);

 while (fw_ptr <= fw_max) {
  struct sk_buff *skb;




  err = wait_on_bit_timeout(&mrvl->flags, STATE_FW_REQ_PENDING,
       TASK_INTERRUPTIBLE,
       msecs_to_jiffies(2000));
  if (err == 1) {
   bt_dev_err(hdev, "Firmware load interrupted");
   err = -EINTR;
   break;
  } else if (err) {
   bt_dev_err(hdev, "Firmware request timeout");
   err = -ETIMEDOUT;
   break;
  }

  bt_dev_dbg(hdev, "Firmware request, expecting %d bytes",
      mrvl->tx_len);

  if (fw_ptr == fw_max) {




   if (!mrvl->tx_len) {
    bt_dev_info(hdev, "Firmware loading complete");
   } else {
    bt_dev_err(hdev, "Firmware loading failure");
    err = -EINVAL;
   }
   break;
  }

  if (fw_ptr + mrvl->tx_len > fw_max) {
   mrvl->tx_len = fw_max - fw_ptr;
   bt_dev_dbg(hdev, "Adjusting tx_len to %d",
       mrvl->tx_len);
  }

  skb = bt_skb_alloc(mrvl->tx_len, GFP_KERNEL);
  if (!skb) {
   bt_dev_err(hdev, "Failed to alloc mem for FW packet");
   err = -ENOMEM;
   break;
  }
  bt_cb(skb)->pkt_type = MRVL_RAW_DATA;

  skb_put_data(skb, fw_ptr, mrvl->tx_len);
  fw_ptr += mrvl->tx_len;

  set_bit(STATE_FW_REQ_PENDING, &mrvl->flags);

  skb_queue_tail(&mrvl->rawq, skb);
  hci_uart_tx_wakeup(hu);
 }

 release_firmware(fw);
 return err;
}
