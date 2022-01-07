
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dev_ext_attribute {int var; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ strtobool (char const*,int ) ;
 struct dev_ext_attribute* to_ext_attr (struct device_attribute*) ;

ssize_t device_store_bool(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t size)
{
 struct dev_ext_attribute *ea = to_ext_attr(attr);

 if (strtobool(buf, ea->var) < 0)
  return -EINVAL;

 return size;
}
