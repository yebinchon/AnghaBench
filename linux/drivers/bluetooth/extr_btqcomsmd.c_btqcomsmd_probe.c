
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hci_dev {int set_bdaddr; int setup; int send; int close; int open; int bus; } ;
struct btqcomsmd {struct hci_dev* hdev; void* cmd_channel; void* acl_channel; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_SMD ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SET_HCIDEV_DEV (struct hci_dev*,TYPE_1__*) ;
 int btqcomsmd_acl_callback ;
 int btqcomsmd_close ;
 int btqcomsmd_cmd_callback ;
 int btqcomsmd_open ;
 int btqcomsmd_send ;
 int btqcomsmd_setup ;
 void* dev_get_drvdata (int ) ;
 struct btqcomsmd* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct btqcomsmd*) ;
 int platform_set_drvdata (struct platform_device*,struct btqcomsmd*) ;
 int qca_set_bdaddr_rome ;
 void* qcom_wcnss_open_channel (void*,char*,int ,struct btqcomsmd*) ;

__attribute__((used)) static int btqcomsmd_probe(struct platform_device *pdev)
{
 struct btqcomsmd *btq;
 struct hci_dev *hdev;
 void *wcnss;
 int ret;

 btq = devm_kzalloc(&pdev->dev, sizeof(*btq), GFP_KERNEL);
 if (!btq)
  return -ENOMEM;

 wcnss = dev_get_drvdata(pdev->dev.parent);

 btq->acl_channel = qcom_wcnss_open_channel(wcnss, "APPS_RIVA_BT_ACL",
         btqcomsmd_acl_callback, btq);
 if (IS_ERR(btq->acl_channel))
  return PTR_ERR(btq->acl_channel);

 btq->cmd_channel = qcom_wcnss_open_channel(wcnss, "APPS_RIVA_BT_CMD",
         btqcomsmd_cmd_callback, btq);
 if (IS_ERR(btq->cmd_channel))
  return PTR_ERR(btq->cmd_channel);

 hdev = hci_alloc_dev();
 if (!hdev)
  return -ENOMEM;

 hci_set_drvdata(hdev, btq);
 btq->hdev = hdev;
 SET_HCIDEV_DEV(hdev, &pdev->dev);

 hdev->bus = HCI_SMD;
 hdev->open = btqcomsmd_open;
 hdev->close = btqcomsmd_close;
 hdev->send = btqcomsmd_send;
 hdev->setup = btqcomsmd_setup;
 hdev->set_bdaddr = qca_set_bdaddr_rome;

 ret = hci_register_dev(hdev);
 if (ret < 0) {
  hci_free_dev(hdev);
  return ret;
 }

 platform_set_drvdata(pdev, btq);

 return 0;
}
