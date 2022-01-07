
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int dev; } ;
struct btmtk_hci_wmt_params {int dlen; int* data; int * status; scalar_t__ flag; int op; } ;
typedef int param ;


 int MTK_WMT_FUNC_CTRL ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int mtk_hci_wmt_sync (struct hci_dev*,struct btmtk_hci_wmt_params*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int btmtksdio_shutdown(struct hci_dev *hdev)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);
 struct btmtk_hci_wmt_params wmt_params;
 u8 param = 0x0;
 int err;




 pm_runtime_get_sync(bdev->dev);


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

 pm_runtime_put_noidle(bdev->dev);
 pm_runtime_disable(bdev->dev);

 return 0;
}
