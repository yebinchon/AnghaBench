
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct devcd_entry {int del_wk; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 struct devcd_entry* dev_to_devcd (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static ssize_t devcd_data_write(struct file *filp, struct kobject *kobj,
    struct bin_attribute *bin_attr,
    char *buffer, loff_t offset, size_t count)
{
 struct device *dev = kobj_to_dev(kobj);
 struct devcd_entry *devcd = dev_to_devcd(dev);

 mod_delayed_work(system_wq, &devcd->del_wk, 0);

 return count;
}
