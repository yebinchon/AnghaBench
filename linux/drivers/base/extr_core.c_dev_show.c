
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int devt; } ;
typedef int ssize_t ;


 int print_dev_t (char*,int ) ;

__attribute__((used)) static ssize_t dev_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 return print_dev_t(buf, dev->devt);
}
