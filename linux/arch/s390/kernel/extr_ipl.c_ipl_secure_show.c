
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int ipl_secure_flag ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ipl_secure_show(struct kobject *kobj,
          struct kobj_attribute *attr, char *page)
{
 return sprintf(page, "%i\n", !!ipl_secure_flag);
}
