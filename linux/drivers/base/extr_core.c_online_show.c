
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int offline; } ;
typedef int ssize_t ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t online_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 bool val;

 device_lock(dev);
 val = !dev->offline;
 device_unlock(dev);
 return sprintf(buf, "%u\n", val);
}
