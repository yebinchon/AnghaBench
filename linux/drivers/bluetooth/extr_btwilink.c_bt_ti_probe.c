
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_st {struct hci_dev* hdev; } ;
struct platform_device {int dev; } ;
struct hci_dev {int send; int * flush; int close; int open; int bus; } ;


 int BT_DBG (char*,struct hci_dev*) ;
 int BT_ERR (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_UART ;
 int dev_set_drvdata (int *,struct ti_st*) ;
 struct ti_st* devm_kzalloc (int *,int,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct ti_st*) ;
 int ti_st_close ;
 int ti_st_open ;
 int ti_st_send_frame ;

__attribute__((used)) static int bt_ti_probe(struct platform_device *pdev)
{
 struct ti_st *hst;
 struct hci_dev *hdev;
 int err;

 hst = devm_kzalloc(&pdev->dev, sizeof(struct ti_st), GFP_KERNEL);
 if (!hst)
  return -ENOMEM;


 hdev = hci_alloc_dev();
 if (!hdev)
  return -ENOMEM;

 BT_DBG("hdev %p", hdev);

 hst->hdev = hdev;
 hdev->bus = HCI_UART;
 hci_set_drvdata(hdev, hst);
 hdev->open = ti_st_open;
 hdev->close = ti_st_close;
 hdev->flush = ((void*)0);
 hdev->send = ti_st_send_frame;

 err = hci_register_dev(hdev);
 if (err < 0) {
  BT_ERR("Can't register HCI device error %d", err);
  hci_free_dev(hdev);
  return err;
 }

 BT_DBG("HCI device registered (hdev %p)", hdev);

 dev_set_drvdata(&pdev->dev, hst);
 return 0;
}
