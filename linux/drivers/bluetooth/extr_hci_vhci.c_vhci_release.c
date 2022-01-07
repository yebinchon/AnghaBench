
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int readq; struct hci_dev* hdev; int open_timeout; } ;
struct inode {int dummy; } ;
struct hci_dev {int dummy; } ;
struct file {struct vhci_data* private_data; } ;


 int cancel_delayed_work_sync (int *) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int kfree (struct vhci_data*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int vhci_release(struct inode *inode, struct file *file)
{
 struct vhci_data *data = file->private_data;
 struct hci_dev *hdev;

 cancel_delayed_work_sync(&data->open_timeout);

 hdev = data->hdev;

 if (hdev) {
  hci_unregister_dev(hdev);
  hci_free_dev(hdev);
 }

 skb_queue_purge(&data->readq);
 file->private_data = ((void*)0);
 kfree(data);

 return 0;
}
