
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int dev_type; int set_bdaddr; int setup; int send; int flush; int close; int open; int bus; } ;
struct TYPE_4__ {int task; } ;
struct TYPE_3__ {int dev_type; struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_2__ main_thread; TYPE_1__ btmrvl_dev; } ;


 int BT_ERR (char*) ;
 int ENOMEM ;
 int HCI_SDIO ;
 int btmrvl_close ;
 int btmrvl_debugfs_init (struct hci_dev*) ;
 int btmrvl_flush ;
 int btmrvl_free_adapter (struct btmrvl_private*) ;
 int btmrvl_open ;
 int btmrvl_send_frame ;
 int btmrvl_set_bdaddr ;
 int btmrvl_setup ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct btmrvl_private*) ;
 int kfree (struct btmrvl_private*) ;
 int kthread_stop (int ) ;

int btmrvl_register_hdev(struct btmrvl_private *priv)
{
 struct hci_dev *hdev = ((void*)0);
 int ret;

 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can not allocate HCI device");
  goto err_hdev;
 }

 priv->btmrvl_dev.hcidev = hdev;
 hci_set_drvdata(hdev, priv);

 hdev->bus = HCI_SDIO;
 hdev->open = btmrvl_open;
 hdev->close = btmrvl_close;
 hdev->flush = btmrvl_flush;
 hdev->send = btmrvl_send_frame;
 hdev->setup = btmrvl_setup;
 hdev->set_bdaddr = btmrvl_set_bdaddr;

 hdev->dev_type = priv->btmrvl_dev.dev_type;

 ret = hci_register_dev(hdev);
 if (ret < 0) {
  BT_ERR("Can not register HCI device");
  goto err_hci_register_dev;
 }





 return 0;

err_hci_register_dev:
 hci_free_dev(hdev);

err_hdev:

 kthread_stop(priv->main_thread.task);

 btmrvl_free_adapter(priv);
 kfree(priv);

 return -ENOMEM;
}
