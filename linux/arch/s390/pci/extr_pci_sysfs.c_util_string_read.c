
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int util_str; } ;
struct pci_dev {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 struct device* kobj_to_dev (struct kobject*) ;
 int memory_read_from_buffer (char*,size_t,int *,int ,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (struct pci_dev*) ;

__attribute__((used)) static ssize_t util_string_read(struct file *filp, struct kobject *kobj,
    struct bin_attribute *attr, char *buf,
    loff_t off, size_t count)
{
 struct device *dev = kobj_to_dev(kobj);
 struct pci_dev *pdev = to_pci_dev(dev);
 struct zpci_dev *zdev = to_zpci(pdev);

 return memory_read_from_buffer(buf, count, &off, zdev->util_str,
           sizeof(zdev->util_str));
}
