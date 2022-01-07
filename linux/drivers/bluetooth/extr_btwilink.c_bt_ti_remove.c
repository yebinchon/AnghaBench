
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_st {struct hci_dev* hdev; } ;
struct platform_device {int dev; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ) ;
 int EFAULT ;
 struct ti_st* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int ti_st_close (struct hci_dev*) ;

__attribute__((used)) static int bt_ti_remove(struct platform_device *pdev)
{
 struct hci_dev *hdev;
 struct ti_st *hst = dev_get_drvdata(&pdev->dev);

 if (!hst)
  return -EFAULT;

 BT_DBG("%s", hst->hdev->name);

 hdev = hst->hdev;
 ti_st_close(hdev);
 hci_unregister_dev(hdev);

 hci_free_dev(hdev);

 dev_set_drvdata(&pdev->dev, ((void*)0));
 return 0;
}
