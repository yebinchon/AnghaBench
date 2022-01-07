
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct btmrvl_private {struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {int status_dir; int config_dir; } ;


 int debugfs_remove_recursive (int ) ;
 struct btmrvl_private* hci_get_drvdata (struct hci_dev*) ;
 int kfree (struct btmrvl_debugfs_data*) ;

void btmrvl_debugfs_remove(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hci_get_drvdata(hdev);
 struct btmrvl_debugfs_data *dbg = priv->debugfs_data;

 if (!dbg)
  return;

 debugfs_remove_recursive(dbg->config_dir);
 debugfs_remove_recursive(dbg->status_dir);

 kfree(dbg);
}
