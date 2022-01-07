
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int desired_speed; int curr_speed; int serdev; } ;
struct btmtk_hci_wmt_params {int flag; int dlen; int * status; int * data; int op; } ;
typedef int param ;
typedef int __le32 ;


 int MAX_SCHEDULE_TIMEOUT ;
 int MTK_WMT_HIF ;
 int MTK_WMT_TEST ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int cpu_to_le32 (int ) ;
 struct btmtkuart_dev* hci_get_drvdata (struct hci_dev*) ;
 int mtk_hci_wmt_sync (struct hci_dev*,struct btmtk_hci_wmt_params*) ;
 int serdev_device_set_baudrate (int ,int ) ;
 int serdev_device_set_flow_control (int ,int) ;
 int serdev_device_wait_until_sent (int ,int ) ;
 int serdev_device_write (int ,int*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int btmtkuart_change_baudrate(struct hci_dev *hdev)
{
 struct btmtkuart_dev *bdev = hci_get_drvdata(hdev);
 struct btmtk_hci_wmt_params wmt_params;
 __le32 baudrate;
 u8 param;
 int err;




 baudrate = cpu_to_le32(bdev->desired_speed);
 wmt_params.op = MTK_WMT_HIF;
 wmt_params.flag = 1;
 wmt_params.dlen = 4;
 wmt_params.data = &baudrate;
 wmt_params.status = ((void*)0);

 err = mtk_hci_wmt_sync(hdev, &wmt_params);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to device baudrate (%d)", err);
  return err;
 }

 err = serdev_device_set_baudrate(bdev->serdev,
      bdev->desired_speed);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to set up host baudrate (%d)",
      err);
  return err;
 }

 serdev_device_set_flow_control(bdev->serdev, 0);


 param = 0xff;
 err = serdev_device_write(bdev->serdev, &param, sizeof(param),
      MAX_SCHEDULE_TIMEOUT);
 if (err < 0 || err < sizeof(param))
  return err;

 serdev_device_wait_until_sent(bdev->serdev, 0);


 usleep_range(20000, 22000);


 wmt_params.op = MTK_WMT_TEST;
 wmt_params.flag = 7;
 wmt_params.dlen = 0;
 wmt_params.data = ((void*)0);
 wmt_params.status = ((void*)0);

 err = mtk_hci_wmt_sync(hdev, &wmt_params);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to test new baudrate (%d)",
      err);
  return err;
 }

 bdev->curr_speed = bdev->desired_speed;

 return 0;
}
