
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_size_unit {int size; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct counter_size_unit* component; } ;


 int sprintf (char*,char*,int ) ;
 TYPE_1__* to_counter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t counter_device_attr_size_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 const struct counter_size_unit *const comp = to_counter_attr(attr)->component;

 return sprintf(buf, "%zu\n", comp->size);
}
