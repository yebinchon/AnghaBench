
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct elog_obj {int dummy; } ;
struct elog_attribute {int (* store ) (struct elog_obj*,struct elog_attribute*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct elog_obj*,struct elog_attribute*,char const*,size_t) ;
 struct elog_attribute* to_elog_attr (struct attribute*) ;
 struct elog_obj* to_elog_obj (struct kobject*) ;

__attribute__((used)) static ssize_t elog_attr_store(struct kobject *kobj,
          struct attribute *attr,
          const char *buf, size_t len)
{
 struct elog_attribute *attribute;
 struct elog_obj *elog;

 attribute = to_elog_attr(attr);
 elog = to_elog_obj(kobj);

 if (!attribute->store)
  return -EIO;

 return attribute->store(elog, attribute, buf, len);
}
