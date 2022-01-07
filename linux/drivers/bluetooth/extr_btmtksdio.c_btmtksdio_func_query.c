
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct btmtk_hci_wmt_params {int flag; int dlen; int* status; int * data; int op; } ;
typedef int param ;


 int MTK_WMT_FUNC_CTRL ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int mtk_hci_wmt_sync (struct hci_dev*,struct btmtk_hci_wmt_params*) ;

__attribute__((used)) static int btmtksdio_func_query(struct hci_dev *hdev)
{
 struct btmtk_hci_wmt_params wmt_params;
 int status, err;
 u8 param = 0;


 wmt_params.op = MTK_WMT_FUNC_CTRL;
 wmt_params.flag = 4;
 wmt_params.dlen = sizeof(param);
 wmt_params.data = &param;
 wmt_params.status = &status;

 err = mtk_hci_wmt_sync(hdev, &wmt_params);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to query function status (%d)", err);
  return err;
 }

 return status;
}
