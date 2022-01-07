
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct devcd_entry {int datalen; int data; int (* read ) (char*,int ,size_t,int ,int ) ;} ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 struct devcd_entry* dev_to_devcd (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;
 int stub1 (char*,int ,size_t,int ,int ) ;

__attribute__((used)) static ssize_t devcd_data_read(struct file *filp, struct kobject *kobj,
          struct bin_attribute *bin_attr,
          char *buffer, loff_t offset, size_t count)
{
 struct device *dev = kobj_to_dev(kobj);
 struct devcd_entry *devcd = dev_to_devcd(dev);

 return devcd->read(buffer, offset, count, devcd->data, devcd->datalen);
}
