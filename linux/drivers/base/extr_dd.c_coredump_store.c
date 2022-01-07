
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {TYPE_1__* driver; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* coredump ) (struct device*) ;} ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int stub1 (struct device*) ;

__attribute__((used)) static ssize_t coredump_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 device_lock(dev);
 dev->driver->coredump(dev);
 device_unlock(dev);

 return count;
}
