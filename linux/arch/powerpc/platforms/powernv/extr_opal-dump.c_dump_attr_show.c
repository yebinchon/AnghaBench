
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct dump_obj {int dummy; } ;
struct dump_attribute {int (* show ) (struct dump_obj*,struct dump_attribute*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct dump_obj*,struct dump_attribute*,char*) ;
 struct dump_attribute* to_dump_attr (struct attribute*) ;
 struct dump_obj* to_dump_obj (struct kobject*) ;

__attribute__((used)) static ssize_t dump_attr_show(struct kobject *kobj,
         struct attribute *attr,
         char *buf)
{
 struct dump_attribute *attribute;
 struct dump_obj *dump;

 attribute = to_dump_attr(attr);
 dump = to_dump_obj(kobj);

 if (!attribute->show)
  return -EIO;

 return attribute->show(dump, attribute, buf);
}
