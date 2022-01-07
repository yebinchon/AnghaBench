
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cacheinfo {int size; } ;
typedef int ssize_t ;


 struct cacheinfo* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t size_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct cacheinfo *this_leaf = dev_get_drvdata(dev);

 return sprintf(buf, "%uK\n", this_leaf->size >> 10);
}
