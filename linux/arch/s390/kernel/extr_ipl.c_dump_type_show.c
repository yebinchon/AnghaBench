
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int dump_type ;
 char* dump_type_str (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t dump_type_show(struct kobject *kobj,
         struct kobj_attribute *attr, char *page)
{
 return sprintf(page, "%s\n", dump_type_str(dump_type));
}
