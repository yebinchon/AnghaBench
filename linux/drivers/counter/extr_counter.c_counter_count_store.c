
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_device_attr {struct counter_count_unit* component; } ;
struct counter_device {TYPE_1__* ops; } ;
struct counter_count_write_value {char const* buf; } ;
struct counter_count_unit {struct counter_count* count; } ;
struct counter_count {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* count_write ) (struct counter_device* const,struct counter_count* const,struct counter_count_write_value*) ;} ;


 struct counter_device* dev_get_drvdata (struct device*) ;
 int stub1 (struct counter_device* const,struct counter_count* const,struct counter_count_write_value*) ;
 struct counter_device_attr* to_counter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t counter_count_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct counter_device *const counter = dev_get_drvdata(dev);
 const struct counter_device_attr *const devattr = to_counter_attr(attr);
 const struct counter_count_unit *const component = devattr->component;
 struct counter_count *const count = component->count;
 int err;
 struct counter_count_write_value val = { .buf = buf };

 err = counter->ops->count_write(counter, count, &val);
 if (err)
  return err;

 return len;
}
