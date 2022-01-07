
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int task_recv; } ;
struct gendisk {scalar_t__ private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gendisk* dev_to_disk (struct device*) ;
 int sprintf (char*,char*,int) ;
 int task_pid_nr (int ) ;

__attribute__((used)) static ssize_t pid_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);
 struct nbd_device *nbd = (struct nbd_device *)disk->private_data;

 return sprintf(buf, "%d\n", task_pid_nr(nbd->task_recv));
}
