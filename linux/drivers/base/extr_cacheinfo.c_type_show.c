
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cacheinfo {int type; } ;
typedef int ssize_t ;





 int EINVAL ;
 struct cacheinfo* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct cacheinfo *this_leaf = dev_get_drvdata(dev);

 switch (this_leaf->type) {
 case 130:
  return sprintf(buf, "Data\n");
 case 129:
  return sprintf(buf, "Instruction\n");
 case 128:
  return sprintf(buf, "Unified\n");
 default:
  return -EINVAL;
 }
}
