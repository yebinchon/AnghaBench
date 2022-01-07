
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int debugfs_dev; } ;


 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int debugfs_create_dir (char const*,int ) ;
 int debugfs_create_file (char*,int,int ,struct zpci_dev*,int *) ;
 int debugfs_pci_perf_fops ;
 int debugfs_root ;

void zpci_debug_init_device(struct zpci_dev *zdev, const char *name)
{
 zdev->debugfs_dev = debugfs_create_dir(name, debugfs_root);

 debugfs_create_file("statistics", S_IFREG | S_IRUGO | S_IWUSR,
       zdev->debugfs_dev, zdev, &debugfs_pci_perf_fops);
}
