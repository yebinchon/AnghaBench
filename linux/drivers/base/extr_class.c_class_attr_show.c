
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_private {int class; } ;
struct kobject {int dummy; } ;
struct class_attribute {int (* show ) (int ,struct class_attribute*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (int ,struct class_attribute*,char*) ;
 struct class_attribute* to_class_attr (struct attribute*) ;
 struct subsys_private* to_subsys_private (struct kobject*) ;

__attribute__((used)) static ssize_t class_attr_show(struct kobject *kobj, struct attribute *attr,
          char *buf)
{
 struct class_attribute *class_attr = to_class_attr(attr);
 struct subsys_private *cp = to_subsys_private(kobj);
 ssize_t ret = -EIO;

 if (class_attr->show)
  ret = class_attr->show(cp->class, class_attr, buf);
 return ret;
}
