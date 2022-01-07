
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_ext_unit {struct counter_device_ext* ext; } ;
struct counter_device_ext {int priv; int (* write ) (int ,int ,char const*,size_t) ;} ;
struct counter_device_attr {struct counter_ext_unit* component; } ;
typedef int ssize_t ;


 int dev_get_drvdata (struct device*) ;
 int stub1 (int ,int ,char const*,size_t) ;
 struct counter_device_attr* to_counter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t counter_device_ext_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 const struct counter_device_attr *const devattr = to_counter_attr(attr);
 const struct counter_ext_unit *const component = devattr->component;
 const struct counter_device_ext *const ext = component->ext;

 return ext->write(dev_get_drvdata(dev), ext->priv, buf, len);
}
