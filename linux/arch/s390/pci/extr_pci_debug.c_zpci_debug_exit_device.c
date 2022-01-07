
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int debugfs_dev; } ;


 int debugfs_remove_recursive (int ) ;

void zpci_debug_exit_device(struct zpci_dev *zdev)
{
 debugfs_remove_recursive(zdev->debugfs_dev);
}
