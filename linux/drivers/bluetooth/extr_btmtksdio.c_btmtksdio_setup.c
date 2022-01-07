
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int tci_sleep ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int dev; TYPE_1__* data; } ;
struct btmtk_tci_sleep {int mode; scalar_t__ time_compensation; scalar_t__ host_wakeup_pin; void* host_duration; void* duration; } ;
struct btmtk_hci_wmt_params {int flag; int dlen; int* data; int* status; int op; } ;
typedef int param ;
typedef int ktime_t ;
struct TYPE_2__ {int fwname; } ;


 int BTMTK_WMT_ON_DONE ;
 int BTMTK_WMT_ON_PROGRESS ;
 int BTMTK_WMT_PATCH_DONE ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int MTKBTSDIO_AUTOSUSPEND_DELAY ;
 int MTK_WMT_FUNC_CTRL ;
 int MTK_WMT_SEMAPHORE ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,struct btmtk_tci_sleep*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int bt_dev_info (struct hci_dev*,char*,...) ;
 int btmtksdio_func_query ;
 void* cpu_to_le16 (int) ;
 scalar_t__ enable_autosuspend ;
 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int mtk_hci_wmt_sync (struct hci_dev*,struct btmtk_hci_wmt_params*) ;
 int mtk_setup_firmware (struct hci_dev*,int ) ;
 int pm_runtime_allow (int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_forbid (int ) ;
 int pm_runtime_set_active (int ) ;
 int pm_runtime_set_autosuspend_delay (int ,int ) ;
 int pm_runtime_use_autosuspend (int ) ;
 int readx_poll_timeout (int ,struct hci_dev*,int,int,int,int) ;

__attribute__((used)) static int btmtksdio_setup(struct hci_dev *hdev)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);
 struct btmtk_hci_wmt_params wmt_params;
 ktime_t calltime, delta, rettime;
 struct btmtk_tci_sleep tci_sleep;
 unsigned long long duration;
 struct sk_buff *skb;
 int err, status;
 u8 param = 0x1;

 calltime = ktime_get();


 wmt_params.op = MTK_WMT_SEMAPHORE;
 wmt_params.flag = 1;
 wmt_params.dlen = 0;
 wmt_params.data = ((void*)0);
 wmt_params.status = &status;

 err = mtk_hci_wmt_sync(hdev, &wmt_params);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to query firmware status (%d)", err);
  return err;
 }

 if (status == BTMTK_WMT_PATCH_DONE) {
  bt_dev_info(hdev, "Firmware already downloaded");
  goto ignore_setup_fw;
 }


 err = mtk_setup_firmware(hdev, bdev->data->fwname);
 if (err < 0)
  return err;

ignore_setup_fw:

 err = readx_poll_timeout(btmtksdio_func_query, hdev, status,
     status < 0 || status != BTMTK_WMT_ON_PROGRESS,
     2000, 5000000);

 if (err < 0)
  return err;


 if (status < 0)
  return status;

 if (status == BTMTK_WMT_ON_DONE) {
  bt_dev_info(hdev, "function already on");
  goto ignore_func_on;
 }


 wmt_params.op = MTK_WMT_FUNC_CTRL;
 wmt_params.flag = 0;
 wmt_params.dlen = sizeof(param);
 wmt_params.data = &param;
 wmt_params.status = ((void*)0);

 err = mtk_hci_wmt_sync(hdev, &wmt_params);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to send wmt func ctrl (%d)", err);
  return err;
 }

ignore_func_on:

 tci_sleep.mode = 0x5;
 tci_sleep.duration = cpu_to_le16(0x640);
 tci_sleep.host_duration = cpu_to_le16(0x640);
 tci_sleep.host_wakeup_pin = 0;
 tci_sleep.time_compensation = 0;

 skb = __hci_cmd_sync(hdev, 0xfc7a, sizeof(tci_sleep), &tci_sleep,
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "Failed to apply low power setting (%d)", err);
  return err;
 }
 kfree_skb(skb);

 rettime = ktime_get();
 delta = ktime_sub(rettime, calltime);
 duration = (unsigned long long)ktime_to_ns(delta) >> 10;

 pm_runtime_set_autosuspend_delay(bdev->dev,
      MTKBTSDIO_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(bdev->dev);

 err = pm_runtime_set_active(bdev->dev);
 if (err < 0)
  return err;




 pm_runtime_forbid(bdev->dev);
 pm_runtime_enable(bdev->dev);

 if (enable_autosuspend)
  pm_runtime_allow(bdev->dev);

 bt_dev_info(hdev, "Device setup in %llu usecs", duration);

 return 0;
}
