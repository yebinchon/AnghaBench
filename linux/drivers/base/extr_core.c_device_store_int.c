
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dev_ext_attribute {scalar_t__ var; } ;
typedef int ssize_t ;


 int EINVAL ;
 long INT_MAX ;
 long INT_MIN ;
 int kstrtol (char const*,int ,long*) ;
 struct dev_ext_attribute* to_ext_attr (struct device_attribute*) ;

ssize_t device_store_int(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t size)
{
 struct dev_ext_attribute *ea = to_ext_attr(attr);
 int ret;
 long new;

 ret = kstrtol(buf, 0, &new);
 if (ret)
  return ret;

 if (new > INT_MAX || new < INT_MIN)
  return -EINVAL;
 *(int *)(ea->var) = new;

 return size;
}
