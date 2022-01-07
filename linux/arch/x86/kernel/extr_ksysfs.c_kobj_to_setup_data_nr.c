
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 char* kobject_name (struct kobject*) ;
 int kstrtoint (char const*,int,int*) ;

__attribute__((used)) static int kobj_to_setup_data_nr(struct kobject *kobj, int *nr)
{
 const char *name;

 name = kobject_name(kobj);
 return kstrtoint(name, 10, nr);
}
