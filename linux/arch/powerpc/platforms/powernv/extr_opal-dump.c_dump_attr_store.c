
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct dump_obj {int dummy; } ;
struct dump_attribute {int (* store ) (struct dump_obj*,struct dump_attribute*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct dump_obj*,struct dump_attribute*,char const*,size_t) ;
 struct dump_attribute* to_dump_attr (struct attribute*) ;
 struct dump_obj* to_dump_obj (struct kobject*) ;

__attribute__((used)) static ssize_t dump_attr_store(struct kobject *kobj,
          struct attribute *attr,
          const char *buf, size_t len)
{
 struct dump_attribute *attribute;
 struct dump_obj *dump;

 attribute = to_dump_attr(attr);
 dump = to_dump_obj(kobj);

 if (!attribute->store)
  return -EIO;

 return attribute->store(dump, attribute, buf, len);
}
