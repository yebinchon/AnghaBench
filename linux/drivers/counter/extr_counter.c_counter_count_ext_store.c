
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_device_attr {struct counter_count_ext_unit* component; } ;
struct counter_count_ext_unit {int count; struct counter_count_ext* ext; } ;
struct counter_count_ext {int priv; int (* write ) (int ,int ,int ,char const*,size_t) ;} ;
typedef int ssize_t ;


 int dev_get_drvdata (struct device*) ;
 int stub1 (int ,int ,int ,char const*,size_t) ;
 struct counter_device_attr* to_counter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t counter_count_ext_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t len)
{
 const struct counter_device_attr *const devattr = to_counter_attr(attr);
 const struct counter_count_ext_unit *const comp = devattr->component;
 const struct counter_count_ext *const ext = comp->ext;

 return ext->write(dev_get_drvdata(dev), comp->count, ext->priv, buf,
  len);
}
