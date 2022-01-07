
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct TYPE_4__ {struct hci_dev* hcidev; } ;
struct TYPE_6__ {int task; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; TYPE_3__ main_thread; TYPE_2__* adapter; } ;
struct TYPE_5__ {int event_hs_wait_q; int cmd_wait_q; } ;


 int btmrvl_debugfs_remove (struct hci_dev*) ;
 int btmrvl_free_adapter (struct btmrvl_private*) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int kfree (struct btmrvl_private*) ;
 int kthread_stop (int ) ;
 int wake_up_interruptible (int *) ;

int btmrvl_remove_card(struct btmrvl_private *priv)
{
 struct hci_dev *hdev;

 hdev = priv->btmrvl_dev.hcidev;

 wake_up_interruptible(&priv->adapter->cmd_wait_q);
 wake_up_interruptible(&priv->adapter->event_hs_wait_q);

 kthread_stop(priv->main_thread.task);





 hci_unregister_dev(hdev);

 hci_free_dev(hdev);

 priv->btmrvl_dev.hcidev = ((void*)0);

 btmrvl_free_adapter(priv);

 kfree(priv);

 return 0;
}
