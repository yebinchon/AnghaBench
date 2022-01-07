
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_private {int bus; } ;
struct kobject {int dummy; } ;
struct bus_attribute {int (* store ) (int ,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int stub1 (int ,char const*,size_t) ;
 struct bus_attribute* to_bus_attr (struct attribute*) ;
 struct subsys_private* to_subsys_private (struct kobject*) ;

__attribute__((used)) static ssize_t bus_attr_store(struct kobject *kobj, struct attribute *attr,
         const char *buf, size_t count)
{
 struct bus_attribute *bus_attr = to_bus_attr(attr);
 struct subsys_private *subsys_priv = to_subsys_private(kobj);
 ssize_t ret = 0;

 if (bus_attr->store)
  ret = bus_attr->store(subsys_priv->bus, buf, count);
 return ret;
}
